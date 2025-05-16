<?php
// Connect to database
$servername = "localhost";
$username = "root";
$password = "kkkkta";
$dbname = "bebeknusantara";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle POST request
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["product_id"]) && isset($_POST["comment_index"])) {
    $productId = intval($_POST["product_id"]);
    $commentIndex = intval($_POST["comment_index"]);

    // Fetch current comments for the product
    $sql = "SELECT Comments FROM product WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $productId);
    $stmt->execute();
    $stmt->bind_result($commentsString);
    $stmt->fetch();
    $stmt->close();

    if ($commentsString !== null) {
        $comments = explode('|', $commentsString);

        // Remove the comment at the specified index
        if (isset($comments[$commentIndex])) {
            array_splice($comments, $commentIndex, 1);

            // Update the Comments field in database
            $newCommentsString = implode('|', $comments);

            $updateSql = "UPDATE product SET Comments = ? WHERE ID = ?";
            $updateStmt = $conn->prepare($updateSql);
            $updateStmt->bind_param("si", $newCommentsString, $productId);
            $updateStmt->execute();
            $updateStmt->close();
        }
    }
}

$conn->close();

// Redirect back to store
header("Location: store.php");
exit;
?>
