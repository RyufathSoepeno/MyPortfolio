
<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "kkkkta"; 
$dbname = "bebeknusantara";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the search query
$query = isset($_GET['query']) ? trim($_GET['query']) : '';
$results = [];

if ($query !== '') {
    $queryLower = strtolower($conn->real_escape_string($query));

    // Search query
    $sql = "
        SELECT * FROM product
        WHERE 
            LOWER(Name) LIKE '%$queryLower%' OR
            LOWER(Description) LIKE '%$queryLower%' OR
            LOWER(Keywords) LIKE '%$queryLower%'
    ";

    $res = $conn->query($sql);

    if ($res && $res->num_rows > 0) {
        while ($row = $res->fetch_assoc()) {
            $results[] = $row;
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
    <link rel="stylesheet" href="css/utility-styles.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.3.2/papaparse.min.js"></script>
    <script defer src="js/store.js"></script>
</head>
<body>
    <header>
        <nav>
            <div class="menu-container">
                <div class="left-bar" tabindex="0">
                    <img src="images/Three Bars.png" alt="Menu Icon" height="50" width="50">
                </div>
                <div class="dropdown">
                    <a href="store.php">Menu</a>
                    <a href="#">Login</a>
                </div>
            </div>
            <div class="logo">
                <p class="bebeklogo"><a href="http://localhost/Web Prog Assignment 6/index.php"><img src="images/Logo.png" alt="Bebek Logo" height="50" width="50"></a></p>
            </div>
            <ul class="nav-links">
                <form action="search.php" method="GET" class="search-form">
                    <input type="text" name="query" placeholder="Search..." required>
                    <button type="submit" style="border: none; background: none; cursor: pointer;">
                        <img class="glass" src="images/Magnifying Glass.png" height="20" width="20" alt="Search">
                    </button>
                </form>
                <li><button id="sort-name" type="button">Sort by Name</button></li>
                <li><button id="sort-price" type="button">Sort by Price</button></li>
                <li><a href="store.php">Menu</a></li>
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
                        <img src="<?= htmlspecialchars($product['Images']) ?>" height="90" width="90" alt="<?= htmlspecialchars($product[1]) ?>">
                        <p>#<?= htmlspecialchars($product['ID']) ?></p>
                        <a href="product.php?id=<?= urlencode($product['ID']) ?>&name=<?= urlencode($product['Name']) ?>&desc=<?= urlencode($product['Description']) ?>&price=<?= urlencode($product['Price']) ?>&rating=<?= urlencode($product['Average Rating']) ?>&keywords=<?= urlencode($product['Keywords']) ?>&imgSrc=<?= urlencode($product['Images']) ?>">
                            <h3><?= htmlspecialchars($product['Name']) ?></h3>
                        </a>
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

                        <div class="comments">
                            <p>Comments</p>
                            <div id="comment-box">
                                <?php
                                $comments = explode('|', $product['Comments']); // Assuming comments are separated by '|'
                                foreach ($comments as $index => $comment):
                                    $comment = trim($comment);
                                    if (!empty($comment)): ?>
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