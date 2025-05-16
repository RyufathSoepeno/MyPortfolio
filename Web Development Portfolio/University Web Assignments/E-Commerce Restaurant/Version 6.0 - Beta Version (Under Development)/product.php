<?php
$host = 'localhost';
$db   = 'bebeknusantara';
$user = 'root'; 
$pass = 'kkkkta';     
$charset = 'utf8mb4';

// We can use this to prevent SQL injection
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

$product_id = isset($_GET['id']) ? (int)$_GET['id'] : null;

if ($product_id) {
    $stmt = $pdo->prepare("SELECT * FROM product WHERE ID = ?");
    $stmt->execute([$product_id]);
    $product = $stmt->fetch();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bebek Nusantara - Product Details</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
</head>
<body>
    <header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img src="images/Three Bars.png" alt="Menu Icon" height="50px" width="50px">
                </div>
                <div class="dropdown">
                    <a href="store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            <ul class="nav-links">
                <form action="search.php" method="GET" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glass" src="images/Magnifying Glass.png" height="20px" width="20px" alt="Search">
                    </button>
                </form>
                <li><a href="store.php">Menu</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>

    <div id="product-details" 
        style="position: relative; top: 150px;" 
        data-pokemon="<?= htmlspecialchars($product['Pokemon']) ?>" 
        data-city="<?= htmlspecialchars($product['Location']) ?>">
        <?php if ($product): ?>
        <h2><?= htmlspecialchars($product['Name']) ?></h2>
        <img src="<?= htmlspecialchars($product['Images']) ?>" alt="<?= htmlspecialchars($product['Name']) ?>">
        <p><?= nl2br(htmlspecialchars($product['Description'])) ?></p>
        <p>Price: $<?= htmlspecialchars($product['Price']) ?></p>

        <!-- Comment Form -->
        <form action="comment.php" method="POST">
            <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
            <textarea name="comment" required></textarea>
            <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
            <button type="submit">Post Comment</button>
        </form>

        <!-- Comments -->
        <?php
        $comments = explode('|', $product['Comments'] ?? '');
        foreach ($comments as $index => $comment):
            if (trim($comment)):
        ?>
        <div class="comment">
            <p><?= htmlspecialchars($comment) ?></p>
            <?php if (($_SESSION['role'] === 'Moderator' || $_SESSION['username'] === $product['owner']) && isset($_SESSION['role'])): ?>
                <form action="delete_comment.php" method="POST">
                    <input type="hidden" name="product_id" value="<?= $product['ID'] ?>">
                    <input type="hidden" name="comment_index" value="<?= $index ?>">
                    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
                    <button type="submit">Delete</button>
                </form>
            <?php endif; ?>
        </div>
        <?php
            endif;
        endforeach;
        ?>
    <?php else: ?>
        <p>Product not found.</p>
    <?php endif; ?>

    <?php

    $query = trim($_GET['query'] ?? '');
    $results = [];

    if ($query !== '') {
        $stmt = $pdo->prepare("SELECT * FROM product WHERE Name LIKE ? OR Description LIKE ? OR Keywords LIKE ?");
        $wild = "%$query%";
        $stmt->execute([$wild, $wild, $wild]);
        $results = $stmt->fetchAll();
    }
    ?>

    <h2>Search Results for "<?= htmlspecialchars($query) ?>"</h2>
    <?php if (!empty($results)): ?>
        <div class="product-grid">
            <?php foreach ($results as $product): ?>
                <div class="product-item">
                    <img src="<?= htmlspecialchars($product['Images']) ?>" alt="<?= htmlspecialchars($product['Name']) ?>">
                    <h3><?= htmlspecialchars($product['Name']) ?></h3>
                    <p><?= nl2br(htmlspecialchars($product['Description'])) ?></p>
                    <p>Price: $<?= htmlspecialchars($product['Price']) ?></p>
                    <a href="product.php?id=<?= urlencode($product['ID']) ?>">View Product</a>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else: ?>
        <p>No results found.</p>
    <?php endif; ?>

    </div>


    <script src="js\product.js"></script>


    <footer class="otherfooter" style="position: relative; margin-top: 50px;">
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
