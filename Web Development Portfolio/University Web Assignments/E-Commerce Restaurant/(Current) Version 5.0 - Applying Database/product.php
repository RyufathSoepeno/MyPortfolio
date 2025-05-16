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

// Get product ID from URL, similar to ORM Data Mapping
$product_id = isset($_GET['id']) ? $_GET['id'] : null;
$product = null;

if ($product_id !== null) {
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
            <h2>#<?= htmlspecialchars($product['ID']) ?></h2>
            <h1><?= htmlspecialchars($product['Name']) ?></h1>
            <img src="<?= htmlspecialchars($product['Images']) ?>" alt="<?= htmlspecialchars($product['Name']) ?>" width="200px">
            <p><strong>Description:</strong> <?= htmlspecialchars($product['Description']) ?></p>
            <p><strong>Price:</strong> $<?= htmlspecialchars($product['Price']) ?></p>
            <p><strong>Rating:</strong> <?= htmlspecialchars($product['Rating']) ?>/10</p>
            <p><strong>Keywords:</strong> <?= htmlspecialchars($product['Keywords']) ?></p>
            <br>

            <!-- Pokémon Section -->
            <div id="pokemon-section" style="margin-top: 20px;">
                <h3>Pokémon Companion</h3>
                <div id="pokemon-info">
                    <p>Loading Pokémon data...</p>
                </div>
            </div>

            <!-- Weather Section -->
            <br>
            <div id="weather-section" style="margin-top: 20px;">
                <h3>Shipping Weather Info</h3>
                <div id="weather-info">
                    <p>Loading weather data...</p>
                </div>
            </div>

            <!-- Comment Section -->
            <br>
            <div class="container">
                <br>
                <form action="comment.php" method="POST">
                    <input type="hidden" name="product_id" value="<?= htmlspecialchars($product['ID']) ?>">
                    <textarea name="comment" placeholder="Add Your Comment" required></textarea>
                    <button type="submit">Comment</button>
                </form>
            </div>
            <div class="comments">
                <p>Comments</p>
                <div id="comment-box">
                    <?php
                    $comments = explode('|', $product['Comments']); // Assuming 'comments' is the column storing comments
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
        <?php else: ?>
            <h2>Product not found.</h2>
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
