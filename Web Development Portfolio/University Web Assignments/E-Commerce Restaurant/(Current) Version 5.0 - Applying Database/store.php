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
                    <a href="http://localhost/Web Prog Assignment 6/store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Assignment 6/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            <ul class="nav-links">
                <form action="http://localhost/Web Prog Assignment 6/search.php" method="GET" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glass" src="images/Magnifying Glass.png" height="20px" width="20px" onclick="document.getElementById('searchForm').submit();" style="cursor: pointer;" alt="Search">
                    </button>
                </form>
                <li><button id="sort-name">Sort by Name</button></li>
                <li><button id="sort-price">Sort by Price</button></li>
                <li><a href="http://localhost/Web Prog Assignment 6/store.php">Menu</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>

   
    
    <section class="product-list">
        <h2 style="text-align: center;">Our Menu</h2>
        <div class="products">
        <?php foreach ($products as $product): ?>
            <div class="product-item" data-pokemon="<?= htmlspecialchars($product['Pokemon']) ?>" data-city="<?= htmlspecialchars($product['Location']) ?>">
                <img src="<?= htmlspecialchars($product['Images']) ?>" height="90px" width="90px">
                <p>#<?= htmlspecialchars($product['ID']) ?></p>
                <a href="product.php?id=<?= urlencode($product['ID']) ?>">
                    <h3><?= htmlspecialchars($product['Name']) ?></h3>
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
                    <form action="comment.php" method="POST">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                        <textarea name="comment" placeholder="Add Your Comment" required></textarea>
                        <button type="submit">Comment</button>
                    </form>
                </div>

                <div class="add-to-cart">
                    <form method="POST" action="">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                        <input type="hidden" name="product_name" value="<?= htmlspecialchars($product['Name']) ?>">
                        <input type="hidden" name="product_price" value="<?= htmlspecialchars($product['Price']) ?>">
                        <button type="submit" name="add_to_cart">Add to Cart 🛒</button>
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
                                    <form action="delete_comment.php" method="POST" style="display:inline;">
                                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                                        <input type="hidden" name="comment_index" value="<?= $index ?>">
                                        <button type="submit">Delete</button>
                                    </form>
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
     <section class="cart">
        <h2>🛒 Your Cart</h2>
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
            </form>
        <?php endif; ?>
    </section>

    
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