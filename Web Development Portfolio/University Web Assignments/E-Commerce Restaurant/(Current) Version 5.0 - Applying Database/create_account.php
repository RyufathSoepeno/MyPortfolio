<?php
$servername = "localhost";
$username = "root";  
$password = "kkkkta";  
$dbname = "bebeknusantara";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $new_username = $_POST['username'];
    $new_password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $new_type = $_POST['compatibility'];

    // Check if username already exists
    $check_stmt = $conn->prepare("SELECT username FROM data WHERE username = ?");
    $check_stmt->bind_param("s", $new_username);
    $check_stmt->execute();
    $check_stmt->store_result();

    if ($check_stmt->num_rows > 0) {
        // Username exists, show alert
        echo "<script>alert('Username already exists. Please choose another one.');</script>";
    } else {
        // Insert new user
        $stmt = $conn->prepare("INSERT INTO data (username, password, type) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $new_username, $new_password, $new_type);

        if ($stmt->execute()) {
            header("Location: index.html");
            exit();
        } else {
            echo "<script>alert('Error creating user');</script>";
        }

        $stmt->close();
    }

    $check_stmt->close();
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account Page</title>
    <link rel="stylesheet" href="css/account.css">
</head>

<body>
    <form method="POST">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>
            <label><input type="radio" name="compatibility" value="User" required> User</label>
            <label><input type="radio" name="compatibility" value="Admin"> Admin</label>
        <button type="submit">Create Account</button>
    </form>
</body>
</html>
