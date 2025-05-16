<?php
$servername = "localhost";
$username = "root";  
$password = "kkkkta";  
$dbname = "bebeknusantara";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $input_username = $_POST['username'];
    $input_password = $_POST['password'];

    // Get username, password hash, and type
    $stmt = $conn->prepare("SELECT password, type FROM data WHERE username = ?");
    $stmt->bind_param("s", $input_username);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($hashed_password, $user_type);

    if ($stmt->num_rows > 0) {
        $stmt->fetch();

        if (password_verify($input_password, $hashed_password)) {
            if ($user_type === "Admin") {
                $_SESSION['username'] = $input_username;
                $_SESSION['type'] = $user_type;
                header("Location: admin.php"); // Redirect to admin dashboard
                exit();
            } else {
                echo "<script>alert('Access denied. You are not an admin.');</script>";
            }
        } else {
            echo "<script>alert('Incorrect password.');</script>";
        }
    } else {
        echo "<script>alert('Username not found.');</script>";
    }

    $stmt->close();
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Sign In</title>
    <link rel="stylesheet" href="css/account.css">
</head>

<body>
    <form method="POST">
        <h3>Admin Login</h3>
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button type="submit">Sign In</button>
    </form>
</body>
</html>
