<?php
// --- Database connection (same as store.php) ---
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

session_start();

// --- Handle form product submission ---
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['add_product'])) {
    $name = $_POST['Name'];
    $description = $_POST['Description'];
    $price = $_POST['Price'];
    $rating = $_POST['Rating'];
    $keywords = $_POST['Keywords'];

    // Default dummy values for Pokemon and Location if you haven't filled them yet
    $pokemon = 'Pikachu';
    $location = 'Jakarta';

    // Handle image upload
    if (isset($_FILES['imageUpload']) && $_FILES['imageUpload']['error'] === 0) {
        $imageTmpPath = $_FILES['imageUpload']['tmp_name'];
        $imageName = uniqid() . '_' . $_FILES['imageUpload']['name']; // make filename unique
        $uploadDir = 'uploads/'; // make sure you create this directory!!
        $imagePath = $uploadDir . $imageName;

        if (!move_uploaded_file($imageTmpPath, $imagePath)) {
            die('Error uploading the image.');
        }
    } else {
        die('Image upload failed.');
    }

    // Insert into database
    $stmt = $pdo->prepare("INSERT INTO product (Name, Description, Price, `Average Rating`, Keywords, Images, Pokemon, Location, Comments)
                           VALUES (:name, :description, :price, :rating, :keywords, :images, :pokemon, :location, '')");

    $stmt->execute([
        ':name' => $name,
        ':description' => $description,
        ':price' => $price,
        ':rating' => $rating,
        ':keywords' => $keywords,
        ':images' => $imagePath,
        ':pokemon' => $pokemon,
        ':location' => $location
    ]);

    echo "<p style='color:green;'>New product inserted successfully!</p>";
}


// Access control for Admin
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'Admin') {
    http_response_code(403);
    exit("Unauthorized access.");
}

// Fetch orders for the admin view
$orders = $pdo->query("
    SELECT o.id, o.status, o.created_at,
           p.Name AS product_name,
           u.username AS buyer_name
    FROM orders o
    JOIN product p ON o.product_id = p.ID
    JOIN data u ON o.buyer_id = u.id
    ORDER BY o.created_at DESC
")->fetchAll();

// CSRF setup
if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

/// For adding comments
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["add_comment"])) {
    $productId = $_POST["product_id"];
    $comment = trim($_POST["comment"]);

    if (!empty($comment)) {
        // Fetch current comment string
        $stmt = $pdo->prepare("SELECT Comments FROM product WHERE ID = ?");
        $stmt->execute([$productId]);
        $existingComments = $stmt->fetchColumn();

        $newComments = empty($existingComments) ? $comment : $existingComments . '|' . $comment;

        $update = $pdo->prepare("UPDATE product SET Comments = ? WHERE ID = ?");
        $update->execute([$newComments, $productId]);

        echo "<script>alert('Comment added successfully!');</script>";
    }
}

/// For deleting comments
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["delete_comment"])) {
    $productId = intval($_POST["product_id"]);
    $commentIndex = intval($_POST["comment_index"]);

    $stmt = $pdo->prepare("SELECT Comments FROM product WHERE ID = ?");
    $stmt->execute([$productId]);
    $commentsString = $stmt->fetchColumn();

    if ($commentsString !== null) {
        $comments = explode('|', $commentsString);
        if (isset($comments[$commentIndex])) {
            array_splice($comments, $commentIndex, 1);
            $newCommentsString = implode('|', $comments);

            $update = $pdo->prepare("UPDATE product SET Comments = ? WHERE ID = ?");
            $update->execute([$newCommentsString, $productId]);

            echo "<script>alert('Comment deleted successfully!');</script>";
        }
    }
}


// Handle order status change
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['order_action'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("CSRF validation failed.");
    }
    $order_id = (int)$_POST['order_id'];
    $new_status = $_POST['new_status'];
    $valid_statuses = ['Pending', 'Fulfilled', 'Cancelled'];

    if (in_array($new_status, $valid_statuses)) {
        $stmt = $pdo->prepare("UPDATE orders SET status = ? WHERE id = ?");
        $stmt->execute([$new_status, $order_id]);
    }
}

// Fetch orders for the admin view
$orders = $pdo->query("
    SELECT o.id, o.status, o.created_at,
           p.Name AS product_name,
           u.username AS buyer_name
    FROM orders o
    JOIN product p ON o.product_id = p.ID
    JOIN data u ON o.buyer_id = u.id
    ORDER BY o.created_at DESC
")->fetchAll();


// Handle user role changes
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['update_role'], $_POST['new_role'], $_POST['user_id'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'] ?? '')) {
        die("CSRF validation failed.");
    }

    $new_role = $_POST['new_role'];
    $user_id = intval($_POST['user_id']);

    if (in_array($new_role, ['User', 'Admin'])) {
        $stmt = $pdo->prepare("UPDATE data SET type = ? WHERE id = ?");
        $stmt->execute([$new_role, $user_id]);
    }
}

// Handle review ban/unban
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['review_action'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("CSRF validation failed.");
    }
    $user_id = (int)$_POST['user_id'];
    $action = $_POST['review_action'] === 'ban' ? 1 : 0;
    $pdo->prepare("UPDATE data SET review_banned = ? WHERE id = ?")->execute([$action, $user_id]);
}

// Handle product deletion / unlisting
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['product_action'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("CSRF validation failed.");
    }
    $product_id = (int)$_POST['product_id'];
    if ($_POST['product_action'] === 'delete') {
        $pdo->prepare("DELETE FROM product WHERE ID = ?")->execute([$product_id]);
    } elseif ($_POST['product_action'] === 'unlist') {
        $pdo->prepare("UPDATE product SET listed = 0 WHERE ID = ?")->execute([$product_id]);
    } elseif ($_POST['product_action'] === 'list') {
    $pdo->prepare("UPDATE product SET listed = 1 WHERE ID = ?")->execute([$product_id]);
    }
}

// Fetch all messages sent to admin users
$inbox = [];

if (isset($_SESSION['user_id']) && $_SESSION['role'] === 'Admin') {
    $stmt = $pdo->prepare("
        SELECT m.*, d.username AS sender_name
        FROM messages m
        JOIN data d ON m.sender_id = d.id
        WHERE m.receiver_id = ?
        ORDER BY m.sender_id, m.sent_at DESC
    ");
    $stmt->execute([$_SESSION['user_id']]);
    $messages = $stmt->fetchAll();

    // Group messages by sender_id
    foreach ($messages as $message) {
        $sender = $message['sender_name'];
        if (!isset($inbox[$sender])) {
            $inbox[$sender] = [];
        }
        $inbox[$sender][] = $message;
    }
}


// Messaging system: send messages
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_message'])) {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("CSRF validation failed.");
    }

    $receiver_id = (int)$_POST['receiver_id'];
    $message = trim($_POST['message']);

    if (empty($message) || !$receiver_id || !isset($_SESSION['user_id'])) {
        echo "<script>alert('Invalid input.');</script>";
    } else {
        // Ensure the receiver exists
        $stmt = $pdo->prepare("SELECT id FROM data WHERE id = ?");
        $stmt->execute([$receiver_id]);
        if ($stmt->rowCount() > 0) {
            $stmt = $pdo->prepare("INSERT INTO messages (sender_id, receiver_id, message, sent_at) VALUES (?, ?, ?, NOW())");
            $stmt->execute([$_SESSION['user_id'], $receiver_id, $message]);
            echo "<script>alert('Message sent successfully.');</script>";
        } else {
            echo "<script>alert('Selected user does not exist.');</script>";
        }
    }
}

/// To do sorting
$user_sort = $_GET['user_sort'] ?? 'none';
$order_sort = $_GET['order_sort'] ?? 'none';
$product_sort = $_GET['product_sort'] ?? 'none';

$user_query = "SELECT id, username, email, type, review_banned FROM data";

if ($user_sort === 'admin_first') {
    $user_query .= " ORDER BY FIELD(type, 'Admin', 'Moderator', 'CustomerService', 'Seller', 'User')";
} elseif ($user_sort === 'user_first') {
    $user_query .= " ORDER BY FIELD(type, 'User', 'Seller', 'CustomerService', 'Moderator', 'Admin')";
} else {
    $user_query .= " ORDER BY id ASC";
}

$users = $pdo->query($user_query)->fetchAll();



$product_query = "SELECT ID, Name, listed FROM product";

if ($product_sort === 'listed') {
    $product_query .= " ORDER BY listed DESC";
} elseif ($product_sort === 'unlisted') {
    $product_query .= " ORDER BY listed ASC";
} else {
    $product_query .= " ORDER BY ID DESC";
}

$products = $pdo->query($product_query)->fetchAll();



$order_query = "
    SELECT o.id, o.status, o.created_at,
           p.Name AS product_name,
           u.username AS buyer_name
    FROM orders o
    JOIN product p ON o.product_id = p.ID
    JOIN data u ON o.buyer_id = u.id
";

if ($order_sort === 'pending_first') {
    $order_query .= " ORDER BY FIELD(o.status, 'Pending', 'Fulfilled', 'Cancelled')";
} elseif ($order_sort === 'fulfilled_first') {
    $order_query .= " ORDER BY FIELD(o.status, 'Fulfilled', 'Pending', 'Cancelled')";
} else {
    $order_query .= " ORDER BY o.created_at DESC";
}

$orders = $pdo->query($order_query)->fetchAll();

// Fetch data for admin view
$users = $pdo->query("SELECT id, username, email, type, review_banned FROM data ORDER BY id ASC")->fetchAll();
$products = $pdo->query("SELECT ID, Name, listed FROM product ORDER BY ID DESC")->fetchAll();
$roles = ['Admin', 'Moderator', 'CustomerService', 'Seller', 'User'];
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Add Product</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>

    <header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img src="images/Three Bars.png" alt="Menu Icon" height="50px" width="50px">
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Final/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px" style="position: fixed; top: 6%; right: 47%;"></a></p>
            </div>
            <ul class="nav-links">
                <form action="http://localhost/Web Prog Final/search.php" method="GET" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit">
                        <img class="glass" src="images/Magnifying Glass.png" height="20px" width="20px" style="position: fixed; top: 7%; right: 12%" onclick="document.getElementById('searchForm').submit();" style="cursor: pointer;" alt="Search">
                    </button>
                </form>
                <li><a href="http://localhost/Web Prog Final/store.php">Menu</a></li>
                <li><a href="http://localhost/Web Prog Final/index.html">Login</a></li>
            </ul>
        </nav>
    </header>

    <h2>User Management</h2>
    <form method="GET" style="text-align:center;">
        <label>Sort Users:</label>
        <select name="user_sort" onchange="this.form.submit()">
            <option value="none">-- Default --</option>
            <option value="admin_first" <?= $user_sort === 'admin_first' ? 'selected' : '' ?>>Admin First</option>
            <option value="user_first" <?= $user_sort === 'user_first' ? 'selected' : '' ?>>User First</option>
        </select>
    </form>
    <table border="1">
        <tr><th>Username</th><th>Email</th><th>Role</th><th>Comment Status</th><th>Review Ban</th></tr>
        <?php foreach ($users as $user): ?>
            <tr>
                <td><?= htmlspecialchars($user['username']) ?></td>
                <td><?= htmlspecialchars($user['email']) ?></td>
                <td><?= htmlspecialchars($user['type']) ?></td>
                <td>
                    <?= $user['review_banned'] ? 'Banned' : 'Allowed' ?>
                </td>
                <td>
                    <form method="POST" style="display:inline;">
                        <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                        <input type="hidden" name="user_id" value="<?= $user['id'] ?>">
                        <select name="new_role">
                            <option value="User" <?= $user['type'] === 'User' ? 'selected' : '' ?>>User</option>
                            <option value="Admin" <?= $user['type'] === 'Admin' ? 'selected' : '' ?>>Admin</option>
                        </select>
                        <button type="submit" name="update_role">Update</button>
                        <button type="submit" name="review_action" value="unban">Unban</button>
                        <button type="submit" name="review_action" value="ban">Ban</button>
                    </form>

                </td>
            </tr>
        <?php endforeach; ?>
    </table>

    <h2>Order Management</h2>
    <form method="GET" style="text-align:center;">
        <label>Sort Orders:</label>
        <select name="order_sort" onchange="this.form.submit()">
            <option value="none">-- Default --</option>
            <option value="pending_first" <?= $order_sort === 'pending_first' ? 'selected' : '' ?>>Pending First</option>
            <option value="fulfilled_first" <?= $order_sort === 'fulfilled_first' ? 'selected' : '' ?>>Fulfilled First</option>
        </select>
    </form>
    <table border="1">
        <tr>
            <th>Order ID</th>
            <th>Product</th>
            <th>Buyer</th>
            <th>Status</th>
            <th>Created At</th>
            <th>Change Status</th>
        </tr>
        <?php foreach ($orders as $order): ?>
        <tr>
            <td><?= $order['id'] ?></td>
            <td><?= htmlspecialchars($order['product_name']) ?></td>
            <td><?= htmlspecialchars($order['buyer_name']) ?></td>
            <td><?= htmlspecialchars($order['status']) ?></td>
            <td><?= htmlspecialchars($order['created_at']) ?></td>
            <td>
                <form method="POST">
                    <input type="hidden" name="order_id" value="<?= $order['id'] ?>">
                    <select name="new_status">
                        <?php
                        $statuses = ['Pending', 'Fulfilled', 'Cancelled'];
                        foreach ($statuses as $status): ?>
                            <option value="<?= $status ?>" <?= $status === $order['status'] ? 'selected' : '' ?>><?= $status ?></option>
                        <?php endforeach; ?>
                    </select>
                    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                    <button type="submit" name="order_action">Update</button>
                </form>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>

    <h2>Product Management</h2>
    <!-- To add new product -->
    <h3 style="text-align:center;">Add New Product</h3>
    <form method="POST" enctype="multipart/form-data" style="text-align:center; width: 90%; margin: 20px auto; background:#fff; padding:15px; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.05);">
        <input type="text" name="Name" placeholder="Product Name" required><br><br>
        <textarea name="Description" placeholder="Description" required></textarea><br><br>
        <input type="number" step="0.01" name="Price" placeholder="Price" required><br><br>
        <input type="number" step="0.1" name="Rating" placeholder="Rating (e.g. 4.5)" required><br><br>
        <input type="text" name="Keywords" placeholder="Keywords (comma-separated)" required><br><br>
        <label>Image Upload:</label><br>
        <input type="file" name="imageUpload" accept="image/*" required><br><br>
        <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
        <button type="submit" name="add_product">Add Product</button>
    </form>

    <!-- To sort products -->
    <form method="GET" style="text-align:center;">
        <label>Sort Products:</label>
        <select name="product_sort" onchange="this.form.submit()">
            <option value="none">-- Default --</option>
            <option value="listed" <?= $product_sort === 'listed' ? 'selected' : '' ?>>Listed First</option>
            <option value="unlisted" <?= $product_sort === 'unlisted' ? 'selected' : '' ?>>Unlisted First</option>
        </select>
    </form>
    <table border="1">
        <tr><th>Product Name</th><th>Status</th><th>Actions</th></tr>
        <?php foreach ($products as $product): ?>
        <tr>
            <td><?= htmlspecialchars($product['Name']) ?></td>
            <td><?= $product['listed'] ? 'Listed' : 'Unlisted' ?></td>
            <td>
                <form method="POST" style="display:inline-block;">
                    <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                    <button type="submit" name="product_action" value="delete" onclick="return confirm('Are you sure?')">Delete</button>
                </form>
                <form method="POST" style="display:inline-block;">
                    <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                    <button type="submit" name="product_action" value="unlist">Unlist</button>
                </form>
                <?php if (!$product['listed']): ?>
                    <form method="POST" style="display:inline-block;">
                        <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                        <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                        <button type="submit" name="product_action" value="list">List</button>
                    </form>
                <?php endif; ?>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>

    <h2>Manage Product Comments</h2>
    <?php foreach ($products as $product): ?>
        <div style="border:1px solid #ccc; padding:10px; margin:10px 0;">
            <strong><?= htmlspecialchars($product['Name']) ?></strong>
            <p>Product ID: <?= $product['ID'] ?></p>

            <form method="POST">
                <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                <textarea name="comment" placeholder="Add a comment..." required></textarea>
                <button type="submit" name="add_comment">Add Comment</button>
            </form>

            <?php
            $stmt = $pdo->prepare("SELECT Comments FROM product WHERE ID = ?");
            $stmt->execute([$product['ID']]);
            $commentString = $stmt->fetchColumn();
            $comments = $commentString ? explode('|', $commentString) : [];
            ?>

            <?php if (!empty($comments)): ?>
                <ul>
                    <?php foreach ($comments as $index => $comment): ?>
                        <li>
                            <?= htmlspecialchars($comment) ?>
                            <form method="POST" style="display:inline;">
                                <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                                <input type="hidden" name="comment_index" value="<?= $index ?>">
                                <button type="submit" name="delete_comment">Delete</button>
                            </form>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php else: ?>
                <p><em>No comments yet.</em></p>
            <?php endif; ?>
        </div>
    <?php endforeach; ?>

    <h2>Inbox Messages</h2>
    <?php if (empty($inbox)): ?>
    <p>No messages received yet.</p>
    <?php else: ?>
        <?php foreach ($inbox as $sender => $msgs): ?>
            <h3>Messages from <?= htmlspecialchars($sender) ?></h3>
            <table border="1" cellpadding="5">
                <tr><th>Message</th><th>Date</th></tr>
                <?php foreach ($msgs as $msg): ?>
                    <tr>
                        <td><?= nl2br(htmlspecialchars($msg['message'])) ?></td>
                        <td><?= htmlspecialchars($msg['sent_at']) ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
            <br>
        <?php endforeach; ?>
    <?php endif; ?>



    <h2>Send Message to User</h2>
    <form method="POST">
        <select name="receiver_id" required>
            <?php
            $stmt = $pdo->prepare("SELECT id, username FROM data WHERE id != ?");
            $stmt->execute([$_SESSION['user_id']]);
            foreach ($stmt as $user) {
                echo '<option value="' . $user['id'] . '">' . htmlspecialchars($user['username']) . '</option>';
            }
            ?>
        </select>
        <textarea name="message" required></textarea>
        <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
        <button type="submit" name="send_message">Send Message</button>
    </form>

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
