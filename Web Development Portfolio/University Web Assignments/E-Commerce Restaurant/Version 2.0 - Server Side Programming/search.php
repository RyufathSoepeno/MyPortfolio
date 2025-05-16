<?php
// Load products from CSV file
$products = [];
$csvFile = fopen("data/product.csv", "r");
while (($data = fgetcsv($csvFile, 1000, ",")) !== FALSE) {
    $products[] = $data;
}
fclose($csvFile);

// Get the search query
$query = isset($_GET['query']) ? trim($_GET['query']) : '';
$results = [];

if ($query !== '') {
    // Convert query to lowercase for case-insensitive search
    $query = strtolower($query);
    
    // Loop through products and check if query matches any field
    foreach ($products as $product) {
        if (
            strpos(strtolower($product[1]), $query) !== false || // Name
            strpos(strtolower($product[2]), $query) !== false || // Description
            strpos(strtolower($product[4]), $query) !== false    // Keywords
        ) {
            $results[] = $product;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.3.2/papaparse.min.js"></script>
    <script defer src="js/store.js"></script>
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
                    <a href="store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Assignment 4/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50px" width="50px"></a></p>
            </div>
            <ul class="nav-links">
                <form action="http://localhost/Web Prog Assignment 4/search.php" method="GET" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glass" src="images/Magnifying Glass.png" height="20px" width="20px" onclick="document.getElementById('searchForm').submit();" style="cursor: pointer;" alt="Search">
                    </button>
                </form>
                <li><button id="sort-name">Sort by Name</button></li>
                <li><button id="sort-price">Sort by Price</button></li>
                <li><a href="http://localhost/Web Prog Assignment 4/store.php">Menu</a></li>
                <li><a href="#">Login</a></li>
            </ul>
        </nav>
    </header>
    <div id="search-results" style="position: relative; top: 150px;">
        <h2>Search Results for: "<?= htmlspecialchars($query) ?>"</h2>

        <?php if (!empty($results)): ?>
            <div class="product-container">
                <?php foreach ($results as $product): ?>
                    <div class="product-item">
                        <img src="<?= htmlspecialchars($product[7]) ?>" height="90px" width="90px">
                        <p>#<?= htmlspecialchars($product[0]) ?></p>
                        <a href="product.php?id=<?= urlencode($product[0]) ?>&name=<?= urlencode($product[1]) ?>&desc=<?= urlencode($product[2]) ?>&price=<?= urlencode($product[3]) ?>&rating=<?= urlencode($product[5]) ?>&keywords=<?= urlencode($product[4]) ?>&imgSrc=images/products/<?= urlencode($product[0]) ?>.jpg">
                            <h3><?= htmlspecialchars($product[1]) ?></h3>
                        </a>
                        <p><?= nl2br(htmlspecialchars($product[2])) ?></p>
                        <span class="price">$<?= htmlspecialchars($product[3]) ?></span>
                        <p>Keywords: <?= htmlspecialchars($product[4]) ?></p>
                        <br><br>
                        <span class="price">Rating: <?= htmlspecialchars($product[5]) ?>/10</span>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <p>No results found.</p>
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
