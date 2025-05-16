<?php
session_start(); // Start session at the very top

$host = 'localhost';
$db   = 'bebeknusantara';
$user = 'root';
$pass = 'kkkkta';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

$currentUser = null;
if (isset($_SESSION['user_id'])) {
    $stmt = $pdo->prepare("SELECT username, email FROM data WHERE id = ?");
    $stmt->execute([$_SESSION['user_id']]);
    $currentUser = $stmt->fetch();
}

// CART SYSTEM
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}
if (!isset($_SESSION['preferred_keywords'])) {
    $_SESSION['preferred_keywords'] = [];
}

// ADD TO CART
if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];

    // Fetch this product's keywords
    $stmt = $pdo->prepare("SELECT Keywords FROM product WHERE ID = ?");
    $stmt->execute([$product_id]);
    $keywords = $stmt->fetchColumn();

    // Detect keywords and add them to preferred list
    if ($keywords) {
        $keywordArray = array_map('trim', explode(',', strtolower($keywords)));
        foreach ($keywordArray as $keyword) {
            if (!in_array($keyword, $_SESSION['preferred_keywords'])) {
                $_SESSION['preferred_keywords'][] = $keyword;
            }
        }
    }

    if (isset($_SESSION['cart'][$product_id])) {
        $_SESSION['cart'][$product_id]['quantity']++;
    } else {
        $_SESSION['cart'][$product_id] = [
            'name' => $product_name,
            'price' => $product_price,
            'quantity' => 1
        ];
    }
}

// CLEAR CART
if (isset($_POST['clear_cart'])) {
    $_SESSION['cart'] = [];
    $_SESSION['preferred_keywords'] = []; // Also clear preferences
}

// SEARCH SYSTEM
$query = isset($_GET['query']) ? trim($_GET['query']) : '';

if ($query) {
    $queryEscaped = htmlspecialchars($query, ENT_QUOTES, 'UTF-8');
    $stmt = $pdo->prepare("
        SELECT * FROM product
        WHERE 
            LEVENSHTEIN(Name, '$queryEscaped') <= 3 OR
            LEVENSHTEIN(Description, '$queryEscaped') <= 3 OR
            LEVENSHTEIN(Keywords, '$queryEscaped') <= 3 OR
            CAST(Price AS CHAR) LIKE '%$queryEscaped%' OR
            CAST(Rating AS CHAR) LIKE '%$queryEscaped%'
    ");
    $stmt->execute();
    $products = $stmt->fetchAll();
} else {
    $stmt = $pdo->query("SELECT * FROM product");
    $products = $stmt->fetchAll();
}

// --- Handle New Comment Submission ---
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit_comment'])) {
    $stmt = $pdo->prepare("SELECT review_banned FROM data WHERE id = ?");
    $stmt->execute([$_SESSION['user_id']]);
    $reviewBanned = (int)$stmt->fetchColumn();

    if ($reviewBanned === 1) {
        echo "<script>alert('You are banned from posting reviews.');</script>";
    } else {
        $productId = (int)$_POST['product_id'];
        $newComment = trim($_POST['comment']);

        if (!empty($newComment) && $productId > 0) {
            $stmt = $pdo->prepare("SELECT Comments FROM product WHERE ID = ?");
            $stmt->execute([$productId]);
            $existingComments = $stmt->fetchColumn();

            $username = htmlspecialchars($_SESSION['username'] ?? 'Anonymous');
            $timestamp = date("Y-m-d H:i:s");
            $formattedComment = "{$username} ({$timestamp}): {$newComment}";

            $updatedComments = $existingComments ? $existingComments . "\n" . $formattedComment : $formattedComment;

            $stmt = $pdo->prepare("UPDATE product SET Comments = ? WHERE ID = ?");
            $stmt->execute([$updatedComments, $productId]);

            echo "<script>alert('Comment submitted successfully!');</script>";
        }
    }

}


// REORDER PRODUCTS IF PREFERRED KEYWORDS EXIST
if (!empty($_SESSION['preferred_keywords'])) {
    $preferred = [];
    $others = [];

    foreach ($products as $product) {
        $productKeywords = array_map('trim', explode(',', strtolower($product['Keywords'])));
        $match = false;
        foreach ($_SESSION['preferred_keywords'] as $pref) {
            if (in_array($pref, $productKeywords)) {
                $match = true;
                break;
            }
        }
        if ($match) {
            $preferred[] = $product;
        } else {
            $others[] = $product;
        }
    }

    $products = array_merge($preferred, $others);
}

$isRecommended = false;
if (!empty($_SESSION['preferred_keywords'])) {
    $productKeywords = array_map('trim', explode(',', strtolower($product['Keywords'])));
    foreach ($_SESSION['preferred_keywords'] as $pref) {
        if (in_array($pref, $productKeywords)) {
            $isRecommended = true;
            break;
        }
    }
}

// Cart initialization
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Handle Add to Cart
// Initialize cart if not set
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// CSRF token
if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

// Sort Logic
if (isset($_GET['sort'])) {
    $sort_by = $_GET['sort'];
    if ($sort_by === 'price') {
        usort($products, fn($a, $b) => $a['price'] <=> $b['price']);
    } elseif ($sort_by === 'name') {
        usort($products, fn($a, $b) => strcmp($a['name'], $b['name']));
    } elseif ($sort_by === 'rating') {
        usort($products, fn($a, $b) => $b['rating'] <=> $a['rating']);
    }
    // Don't unset or clear $recommended — keep it as-is
}

// --- Buyer Features ---
if (isset($_SESSION['role']) && $_SESSION['role'] === 'User') {
    // Track interest (example: track 'duck' keyword if viewed 3 times)
    $interest = $_SESSION['interest'] ?? [];
    if (isset($_GET['view_keyword'])) {
        $kw = $_GET['view_keyword'];
        $interest[$kw] = ($interest[$kw] ?? 0) + 1;
        if ($interest[$kw] >= 3) {
            $_SESSION['preferred_keywords'][] = $kw;
        }
        $_SESSION['interest'] = $interest;
    }

    // Show only this user's alerts
    $stmt = $pdo->prepare("SELECT * FROM alerts WHERE user_id = ? ORDER BY created_at DESC");
    $stmt->execute([$_SESSION['user_id']]);
    $alerts = $stmt->fetchAll();

    // Show only this user's order history
    $stmt = $pdo->prepare("SELECT o.id, o.status, o.product_id, o.quantity, o.created_at, p.Name AS product_name
                           FROM orders o
                           JOIN product p ON o.product_id = p.ID
                           WHERE o.buyer_id = ?
                           ORDER BY o.created_at DESC");
    $stmt->execute([$_SESSION['user_id']]);
    $myOrders = $stmt->fetchAll();
}

// Messaging System: Send message
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_message'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("Invalid CSRF token.");
    }
    $receiver_id = (int)$_POST['user'];
    $message = trim($_POST['message']);
    if ($receiver_id && $message && isset($_SESSION['user_id'])) {
        $stmt = $pdo->prepare("INSERT INTO messages (sender_id, receiver_id, message, sent_at) VALUES (?, ?, ?, NOW())");
        $stmt->execute([$_SESSION['user_id'], $receiver_id, $message]);
    }
}

// Messaging System: Fetch received messages
$receivedMessages = [];
if (isset($_SESSION['user_id'])) {
    $stmt = $pdo->prepare("SELECT m.*, u.username AS sender_name FROM messages m 
                           JOIN data u ON m.sender_id = u.id
                           WHERE m.receiver_id = ? ORDER BY m.sent_at DESC");
    $stmt->execute([$_SESSION['user_id']]);
    $receivedMessages = $stmt->fetchAll();
}

// Handle Checkout (Submit Cart)
if (isset($_POST['checkout_cart']) && !empty($_SESSION['cart'])) {
    if (!isset($_SESSION['user_id'])) {
        echo "<script>alert('You must be logged in to checkout.');</script>";
    } else {
        foreach ($_SESSION['cart'] as $product_id => $item) {
            $product_id = (int)$product_id;
            if ($product_id <= 0) continue; // skip invalid entries

            $quantity = (int)$item['quantity'];
            if ($quantity <= 0) continue; // skip invalid quantities

            $stmt = $pdo->prepare("INSERT INTO orders (buyer_id, product_id, quantity, status, created_at) VALUES (?, ?, ?, 'Pending', NOW())");
            $stmt->execute([$_SESSION['user_id'], $product_id, $quantity]);
        }
        // Clear cart after checkout
        $_SESSION['cart'] = [];
        $_SESSION['preferred_keywords'] = [];
        echo "<script>alert('Your order has been submitted successfully!');</script>";
    }
}

// --- Pagination for products ---
$page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
$limit = 6; // Your page size
$offset = ($page - 1) * $limit;

$stmt = $pdo->prepare("SELECT * FROM product WHERE listed = 1 ORDER BY ID DESC LIMIT ? OFFSET ?");
$stmt->bindValue(1, $limit, PDO::PARAM_INT);
$stmt->bindValue(2, $offset, PDO::PARAM_INT);
$stmt->execute();
$products = $stmt->fetchAll();

// Total count
$total = $pdo->query("SELECT COUNT(*) FROM product WHERE listed = 1")->fetchColumn();
$total_pages = ceil($total / $limit);

// Handle Profile Update
if (isset($_POST['update_profile'])) {
    if (!isset($_SESSION['user_id'])) {
        echo "<script>alert('You must be logged in to update your profile.');</script>";
    } else {
        $new_username = trim($_POST['username']);
        $new_email = trim($_POST['email']);
        $new_address = trim($_POST['address']);

        // Basic validation
        if (empty($new_username) || empty($new_email)) {
            echo "<script>alert('Username and Email are required.');</script>";
        } else {
            // Check if email is already taken (by another user)
            $stmt = $pdo->prepare("SELECT id FROM data WHERE (LOWER(username) = LOWER(?) OR LOWER(email) = LOWER(?)) AND id != ?");
            $stmt->execute([$new_username, $new_email, $_SESSION['user_id']]);
            if ($stmt->fetch()) {
                echo "<script>alert('Username or Email already exists. Please choose another.');</script>";
            } else {
                $stmt = $pdo->prepare("UPDATE data SET username = ?, email = ?, address = ? WHERE id = ?");
                $stmt->execute([$new_username, $new_email, $new_address, $_SESSION['user_id']]);
                echo "<script>alert('Profile updated successfully. Please re-login if your username was changed.');</script>";
            }
        }
    }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bebek Nusantara - Menu</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.3.2/papaparse.min.js"></script>
    
    <script defer src="js/store.js"></script>
    <script src="js\pokemon.js"></script>
    <link rel="stylesheet" href="css/utility-styles.css">
</head>
<body>
    <header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img src="images/Three Bars.png" alt="Menu Icon" height="50px" width="50px">
                </div>
                <div class="dropdown">
                    <a href="http://localhost/Web Prog Final/store.php">Menu</a>
                    <a href="">Login</a>
                </div>
            </div>

            <form action="http://localhost/Web Prog Final/search.php" method="GET" style="position: fixed; left: 6%;" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glass" src="images/Magnifying Glass.png" height="20px" width="20px" style="position: fixed; right: 83%; top: 7.5%;" alt="Search">
                    </button>
            </form>

            <button id="sort-name" style="position: fixed; left: 20%;">Sort by Name</button>
            <button id="sort-price" style="position: fixed; left: 28%;">Sort by Price</button>

            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Final/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            
            <ul class="nav-links">
                <li><a href="http://localhost/Web Prog Final/store.php" class="nav-toggle" style="color: white;" data-target="menu-section">Menu</a></li>
                <li><a href="#" class="nav-toggle" style="color: white;" data-target="order-history-section">History</a></li>
                <li><a href="#" class="nav-toggle" style="color: white;" data-target="send-message-section">Chats</a></li>
                <li><a href="#" class="nav-toggle" style="color: white;" data-target="inbox-section">Notifications</a></li>
                <li><a href="#" class="nav-toggle" style="color: white;"data-target="profile-settings-section">Edit Profile</a></li>
            </ul>
        </nav>
    </header>

   
    <!-- Buyer Alerts -->
    <?php if (isset($alerts)): ?>
    <h2>Your Alerts</h2>
    <?php if (empty($alerts)): ?>
    <p>No alerts.</p>
    <?php else: ?>
        <ul>
        <?php foreach ($alerts as $alert): ?>
            <li><?= htmlspecialchars($alert['message']) ?> (<?= $alert['created_at'] ?>)</li>
        <?php endforeach; ?>
        </ul>
    <?php endif; ?>
    <?php endif; ?>
    
    <section class="product-list toggle-section" id="menu-section">
        <h2 style="text-align: center;">Our Menu</h2>
        <div class="products">
        <?php foreach ($products as $product): ?>
            <div class="product-item" data-pokemon="<?= htmlspecialchars($product['Pokemon']) ?>" data-city="<?= htmlspecialchars($product['Location']) ?>">
                <img src="<?= htmlspecialchars($product['Images']) ?>" alt="Product Image" height="90px" width="90px">
                <p>#<?= htmlspecialchars($product['ID']) ?></p>
                <a href="product.php?id=<?= urlencode($product['ID']) ?>">
                    <h3 style="color: black;"><?= htmlspecialchars($product['Name']) ?></h3>
                </a>

                <?php if ($isRecommended): ?>
                    <p style="color: red; font-weight: bold;">⭐ Recommended for you</p>
                <?php endif; ?>

                <p><?= nl2br(htmlspecialchars($product['Description'])) ?></p>
                <span class="price">$<?= htmlspecialchars($product['Price']) ?></span>
                <p>Keywords: <?= htmlspecialchars($product['Keywords']) ?></p>
                <br><br>
                <span class="price">Rating: <?= htmlspecialchars($product['Average Rating']) ?>/10</span>
                <div class="container">
                    <br>
                    <form method="POST" action="store.php">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                        <textarea name="comment" required placeholder="Leave a comment..."></textarea>
                        <button style="color: white;"type="submit" name="submit_comment">Submit Comment</button>
                    </form>

                    <?php if (!empty($product['Comments'])): ?>
                        <div class="comment-box">
                            <strong>Comments:</strong>
                            <pre><?= htmlspecialchars($product['Comments']) ?></pre>
                        </div>
                    <?php endif; ?>
                </div>

                <div class="add-to-cart">
                    <form method="POST" action="">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                        <input type="hidden" name="product_name" value="<?= htmlspecialchars($product['Name']) ?>">
                        <input type="hidden" name="product_price" value="<?= htmlspecialchars($product['Price']) ?>">
                        <button style="color: white;" type="submit" name="add_to_cart" style="color: black;">Add to Cart 🛒</button>
                    </form>
                </div>

                <div class="comments">
                    <p>Comments</p>
                    <div id="comment-box">
                        <?php
                        $comments = explode('|', $product['Comments']); // Ensure this column exists in the DB
                        foreach ($comments as $index => $comment):
                            if (!empty(trim($comment))): ?>
                                <div class="comment">
                                    <p><?= htmlspecialchars($comment) ?></p>
                                    
                                </div>
                            <?php endif;
                        endforeach; ?>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>

            
        </div>
    </section>


     <!-- CART SECTION -->
     <section class="cart" style="margin-top: 180px;">
        <?php if (empty($_SESSION['cart'])): ?>
            <p>Your cart is empty.</p>
        <?php else: ?>
            <table border="1" cellpadding="5">
                <tr>
                    <th>Product</th><th>Price</th><th>Quantity</th><th>Total</th>
                </tr>
                <?php $grand_total = 0; ?>
                <?php foreach ($_SESSION['cart'] as $id => $item): ?>
                    <tr>
                        <td><?= htmlspecialchars($item['name']) ?></td>
                        <td>$<?= htmlspecialchars($item['price']) ?></td>
                        <td><?= $item['quantity'] ?></td>
                        <td>$<?= number_format($item['price'] * $item['quantity'], 2) ?></td>
                    </tr>
                    <?php $grand_total += $item['price'] * $item['quantity']; ?>
                <?php endforeach; ?>
                <tr>
                    <td colspan="3"><strong>Grand Total</strong></td>
                    <td><strong>$<?= number_format($grand_total, 2) ?></strong></td>
                </tr>
            </table>
            <br>
            <form method="POST">
                <button type="submit" name="clear_cart">Clear Cart</button>
                <?php if (!empty($_SESSION['cart'])): ?>
                    <button type="submit" name="checkout_cart">Checkout</button>
                <?php endif; ?>
            </form>
        <?php endif; ?>
    </section>

    <!-- From here on, these pages are invisible and will be visible when their respective header buttons are implemented -->

    <?php if (isset($_SESSION['user_id'])): ?>
    <section class="order-history toggle-section" id="order-history-section" style="display:none;">
        <?php
        $stmt = $pdo->prepare("
            SELECT o.id, o.product_id, o.quantity, o.status, o.created_at, p.Name
            FROM orders o
            JOIN product p ON o.product_id = p.ID
            WHERE o.buyer_id = ?
            ORDER BY o.created_at DESC
        ");
        $stmt->execute([$_SESSION['user_id']]);
        $orders = $stmt->fetchAll();
        ?>
        <?php if (empty($orders)): ?>
            <p>You have no order history.</p>
        <?php else: ?>
            <table border="1" cellpadding="5">
                <tr><th>Order ID</th><th>Product</th><th>Quantity</th><th>Status</th><th>Date</th></tr>
                <?php foreach ($orders as $order): ?>
                    <tr>
                        <td><?= $order['id'] ?></td>
                        <td><?= htmlspecialchars($order['Name']) ?></td>
                        <td><?= $order['quantity'] ?></td>
                        <td><?= htmlspecialchars($order['status']) ?></td>
                        <td><?= htmlspecialchars($order['created_at']) ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
        <?php endif; ?>
    </section>
    <?php endif; ?>

    <!-- MESSAGING SYSTEM -->
    <section class="messaging toggle-section" id="send-message-section" style="display:none;">
        <?php if (isset($_SESSION['user_id'])): ?>
            <form method="POST">
                <label for="receiver_id">Send To:</label>
                <select name="receiver_id" required>
                    <?php
                    $users = $pdo->prepare("SELECT id, username FROM data WHERE id != ?");
                    $users->execute([$_SESSION['user_id']]);
                    foreach ($users as $user) {
                        echo '<option value="' . $user['id'] . '">' . htmlspecialchars($user['username']) . '</option>';
                    }
                    ?>
                </select><br><br>
                <textarea name="message" placeholder="Write your message here..." required></textarea><br>
                <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                <button type="submit" name="send_message">Send Message</button>
            </form>
        <?php else: ?>
            <p><em>Please log in to send messages.</em></p>
        <?php endif; ?>
    </section>

    <section class="inbox toggle-section" id="inbox-section" style="display:none;">
        <?php if (!empty($receivedMessages)): ?>
            <ul>
                <?php foreach ($receivedMessages as $msg): ?>
                    <li>
                        <strong>From:</strong> <?= htmlspecialchars($msg['sender_name']) ?> <br>
                        <strong>Message:</strong> <?= nl2br(htmlspecialchars($msg['message'])) ?> <br>
                        <hr>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php else: ?>
            <p>No messages yet.</p>
        <?php endif; ?>
    </section>

    <?php if ($currentUser): ?>
    <section class="profile-settings toggle-section" id="profile-settings-section" style="display:none;">
        <form method="POST">
            <label>Username:</label><br>
            <input type="text" name="username" value="<?= htmlspecialchars($currentUser['username']) ?>" required><br><br>
            
            <label>Email:</label><br>
            <input type="email" name="email" value="<?= htmlspecialchars($currentUser['email']) ?>" required><br><br>
            
            <label>Address:</label><br>
            <textarea name="address" rows="3"><?= htmlspecialchars($currentUser['address']) ?></textarea><br><br>
            
            <button type="submit" name="update_profile">Update Profile</button>
        </form>
    </section>
    <?php endif; ?>

    <!-- Pagination -->
    <div class="pagination">
        <?php for ($i = 1; $i <= $total_pages; $i++): ?>
            <a href="http://localhost/Web Prog Final/store.php?page=<?= $i ?>" class="<?= $i == $page ? 'active' : '' ?>" style="color: black;">Page <?= $i ?></a>
        <?php endfor; ?>
    </div>

    <!-- For the sake of visibility, this script code cannot be implemented seperately -->
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        document.getElementById('menu-section').style.display = 'block';
        document.querySelectorAll('.nav-toggle').forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                // Hide all sections
                document.querySelectorAll('.toggle-section').forEach(section => section.style.display = 'none');
                
                // Remove active class from all links
                document.querySelectorAll('.nav-toggle').forEach(l => l.classList.remove('active'));

                // Show the clicked section
                const targetId = this.dataset.target;
                const section = document.getElementById(targetId);
                if (section) {
                    section.style.display = 'block';
                    window.scrollTo({ top: 0, behavior: 'smooth' });
                }

                // Set active class
                this.classList.add('active');
            });
        });
    });
    </script>


    
    <footer class="otherfooter">
        <ul>
            <li><a href="#">Terms of Use</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
        </ul>
        <br>
        <p>&copy; Bebek Nusantara 2025</p>
    </footer>
</body>
</html>