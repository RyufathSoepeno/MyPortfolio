<?php
// Open the CSV file
$csvFile = fopen("data/product.csv", "r");
$count = 0; // Counter to track number of products displayed
$maxProducts = 6; // Maximum number of products to display
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bebek Nusantara - Home</title>
    <link rel="stylesheet" href= "css/styles.css">
    <link rel="stylesheet" href= "css/store.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.3.2/papaparse.min.js"></script>
    <script defer src="js/store.js"></script>
    <link rel="stylesheet" href="css/utility-styles.css">
</head>
<body>
    <!-- The header contains all the navigation links of the website. For some reason, font awesome does not work on my VS Code and my Notebook++. 
    Even when I used alternate font awesome links, it did not work, so I had to use a manual image that had been background erased-->
    <header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img class="small-image" src="images/Three Bars.png" alt="Menu Icon">
                </div>
                <div class="dropdown">
                    <a href="http://localhost/Web Prog Assignment 4/store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Assignment 4/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            <ul class="nav-links">
                <form action="http://localhost/Web Prog Assignment 4/search.php" method="GET" class="search-form" >
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glasses" src="images/Magnifying Glass.png" height="20px" width="20px" onclick="document.getElementById('searchForm').submit();" style="cursor: pointer;" alt="Search">
                    </button>
                </form>
                <li><a href="http://localhost/Web Prog Assignment 4/store.php">Menu</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>
    <!-- This serves as the main tagline as all websites go-->
    <section class="hero">
        <img class="heroism" src="https://malangraya.blok-a.com/wp-content/uploads/sites/5/2024/01/Screenshot-2024-01-25-112721.png">
            <h1 class="Tagline">BEBEK NUSANTARA - Authentic Indonesian Duck Cuisine</h1>
    </section>
    <!-- These are the recommended list of products that are sold in this online restaurant store website, along with their prices and ratings, etc.-->
    <!-- They contain small-sized images -->
    <section class="suggested-products">
        <article>
            <h2 style="position: relative; left: 1%;">Recommended Dishes</h2>
            <div class="product-grid">
            <?php
            if ($csvFile !== FALSE) {
                while (($product = fgetcsv($csvFile)) !== FALSE) {
                    if ($count >= $maxProducts) break; // Stop after printing 6 products
                    ?>
                    <div class="product-item">
                        <img src="<?= htmlspecialchars($product[7]) ?>" height="90px" width="90px">
                        <p>#<?= htmlspecialchars($product[0]) ?></p>
                        <a href="product.php?id=<?= urlencode($product[0]) ?>&name=<?= urlencode($product[1]) ?>&desc=<?= urlencode($product[2]) ?>&price=<?= urlencode($product[3]) ?>&rating=<?= urlencode($product[5]) ?>&keywords=<?= urlencode($product[4]) ?>&imgSrc=<?= urlencode($product[6]) ?>">
                            <h3><?= htmlspecialchars($product[1]) ?></h3>
                        </a>
                        <p><?= nl2br(htmlspecialchars($product[2])) ?></p>
                        <span class="price">$<?= htmlspecialchars($product[3]) ?></span>
                        <p>Keywords: <?= htmlspecialchars($product[4]) ?></p>
                        <br><br>
                        <span class="price">Rating: <?= htmlspecialchars($product[5]) ?>/10</span>
                    </div>
                    <?php
                    $count++;
                }
                fclose($csvFile);
            }
            ?>
            </div>
        </article>
    </section>
    <footer style="position: relative; bottom: auto;">
        <ul>
            <li><a href="#">Terms of Use</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
        </ul>
        <p>&copy; Bebek Nusantara 2025</p>
    </footer>
</body>
</html>