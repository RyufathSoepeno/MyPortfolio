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
                    <a href="http://localhost/Web Prog Assignment 4/store.php">Menu</a>
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
                    <p><?= nl2br(htmlspecialchars($product[2])) ?></p>
                    <span class="price">$<?= htmlspecialchars($product[3]) ?></span>
                    <p>Keywords: <?= htmlspecialchars($product[4]) ?></p>
                    <br><br>
                    <span class="price">Rating: <?= htmlspecialchars($product[5]) ?>/10</span>
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
                </div>
            <?php endforeach; ?>
        </div>
    </section>

    <form id="flexForm" style="position: relative; top: 100px;">
        <input type="text" id="title" placeholder="Enter Name" required>
        <textarea id="description" placeholder="Enter Description" required></textarea>
        <input type="number" id="price" placeholder="Enter Price" required>
        <input type="number" id="rating" placeholder="Enter Rating" required>
        <input type="keywords" id="keywords" placeholder="Enter Keywords (separated by comma)" required>
        <input type="file" id="imageUpload" accept="image/*" required>
        <button type="submit">Insert Bebek Item</button>
    </form>

    <div class="container" id="output"></div>
    
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
