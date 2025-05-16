<?php
function readCSV($filename) {
    $rows = [];
    if (($handle = fopen($filename, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $rows[] = $data;
        }
        fclose($handle);
    }
    return $rows;
}

$products = readCSV("data/product.csv");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bebek Nusantara - Menu</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
    <link rel="stylesheet" href="css/utility-styles.css">
</head>
<body>
<header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img class="small-image" src="images/Three Bars.png" alt="Menu Icon">
                </div>
                <div class="dropdown">
                    <a href="http://localhost/Web Prog Assignment 3/store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Assignment 3/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            <ul class="nav-links">
                <form action="http://localhost/Web Prog Assignment 3/search.php" method="GET" class="search-form" >
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glasses" src="images/Magnifying Glass.png" height="20px" width="20px" onclick="document.getElementById('searchForm').submit();" style="cursor: pointer;" alt="Search">
                    </button>
                </form>
                <li><a href="http://localhost/Web Prog Assignment 3/store.php">Menu</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="product-list">
        <h2 style="text-align: center;">Our Menu</h2>
        <div class="products">
            <?php foreach ($products as $product): ?>
                <div class="product-item">
                    <img src="<?= htmlspecialchars($product[7]) ?>" height="90px" width="90px">
                    <p>#<?= htmlspecialchars($product[0]) ?></p>
                    <a href="product.php?id=<?= urlencode($product[0]) ?>&name=<?= urlencode($product[1]) ?>&desc=<?= urlencode($product[2]) ?>&price=<?= urlencode($product[3]) ?>&rating=<?= urlencode($product[5]) ?>&keywords=<?= urlencode($product[4]) ?>&imgSrc=images/products/<?= urlencode($product[0]) ?>.jpg">
                        <h3><?= htmlspecialchars($product[1]) ?></h3>
                    </a>
                    <p><?= htmlspecialchars($product[2]) ?></p>
                    <span class="price">$<?= htmlspecialchars($product[3]) ?></span>
                    <p>Keywords: <?= htmlspecialchars($product[4]) ?></p>
                    <br><br>
                    <span class="price">Rating: <?= htmlspecialchars($product[5]) ?>/10</span>
                </div>
            <?php endforeach; ?>
        </div>
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
