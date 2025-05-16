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

// --- Handle form submission ---
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST['title'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $rating = $_POST['rating'];
    $keywords = $_POST['keywords'];

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
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Add Product</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/store.css">
</head>
<body>
    <h1 style="text-align: center; margin-top: 50px;">Admin - Insert New Bebek Item</h1>

    <form id="flexForm" method="POST" action="admin.php" enctype="multipart/form-data" style="max-width: 600px; margin: 50px auto;">
        <input type="text" name="title" placeholder="Enter Name" required>
        <textarea name="description" placeholder="Enter Description" required></textarea>
        <input type="number" step="0.01" name="price" placeholder="Enter Price" required>
        <input type="number" step="0.1" name="rating" placeholder="Enter Rating" required>
        <input type="text" name="keywords" placeholder="Enter Keywords (separated by comma)" required>
        <input type="file" name="imageUpload" accept="image/*" required>
        <button type="submit">Insert Bebek Item</button>
    </form>
</body>
</html>
