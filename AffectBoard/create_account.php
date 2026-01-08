<?php
$servername = "localhost";
$username = "root";  
$password = "kkkkta";  
$dbname = "affectiveexperience";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $new_username = $_POST['username'];
    $new_password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Check if username already exists
    $check_stmt = $conn->prepare("SELECT username FROM LoginAX WHERE username = ?");
    $check_stmt->bind_param("s", $new_username);
    $check_stmt->execute();
    $check_stmt->store_result();

    if ($check_stmt->num_rows > 0) {
        // Username exists, show alert
        echo "<script>alert('Username already exists. Please choose another one.');</script>";
    } else {
        // Insert new user
        $stmt = $conn->prepare("INSERT INTO LoginAX (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $new_username, $new_password);

        if ($stmt->execute()) {
            header("Location: index.php?user_added=true");
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
    <title>Create Account</title>
    <style>
        header {
            display: flex;
            justify-content: flex-end;
            color: rgb(254, 207, 207);
            align-items: center;
            text-align: center;
            background-color: #30887A;
            z-index: 1000;
            position: fixed;
            font-size: 18px;
            padding: 18px 10px;
            width: 100%;
            left: 0;
            right: 0;
            top: 0;
        }
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        input, button {
            display: block;
            margin: 10px auto;
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>

<header></header>

<h2>Create Account</h2>
<form method="POST">
    <input type="text" name="username" placeholder="Enter Username" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <button type="submit">Create Account</button>
</form>

</body>
</html>
