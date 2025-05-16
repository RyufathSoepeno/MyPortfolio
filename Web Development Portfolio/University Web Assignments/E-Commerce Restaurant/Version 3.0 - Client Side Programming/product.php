<?php
// Load product data from CSV
$products = [];
$csvFile = fopen("data/product.csv", "r");
while (($data = fgetcsv($csvFile, 1000, ",")) !== FALSE) {
    $products[$data[0]] = $data; // Use product ID as the key
}
fclose($csvFile);

// Get product ID from URL
$product_id = isset($_GET['id']) ? $_GET['id'] : null;
$product = $product_id && isset($products[$product_id]) ? $products[$product_id] : null;
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

    <div id="product-details" style="position: relative; top: 150px;">
        <?php if ($product): ?>
            <h2>#<?= htmlspecialchars($product[0]) ?></h2>
            <h1><?= htmlspecialchars($product[1]) ?></h1>
            <img src="<?= htmlspecialchars($product[7]) ?>" alt="<?= htmlspecialchars($product[1]) ?>" width="200px">
            <p><strong>Description:</strong> <?= htmlspecialchars($product[2]) ?></p>
            <p><strong>Price:</strong> $<?= htmlspecialchars($product[3]) ?></p>
            <p><strong>Rating:</strong> <?= htmlspecialchars($product[5]) ?>/10</p>
            <p><strong>Keywords:</strong> <?= htmlspecialchars($product[4]) ?></p>
            <br>
            <div class="container">
                    <br>
                    <form action="comment.php" method="POST">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($product[0]) ?>">
                        <textarea name="comment" placeholder="Add Your Comment" required></textarea>
                        <button type="submit">Comment</button>
                    </form>
                    </div>
                    <div class="comments">
                        <p>Comments</p>
                        <div id="comment-box">
                            <?php
                            $comments = explode('|', $product[6]); // Assuming the comment column is index 6
                            foreach ($comments as $index => $comment):
                                if (!empty(trim($comment))): ?>
                                    <div class="comment">
                                        <p><?= htmlspecialchars($comment) ?></p>
                                        <form action="delete_comment.php" method="POST" style="display:inline;">
                                            <input type="hidden" name="product_id" value="<?= htmlspecialchars($product[0]) ?>">
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
