<?php
$servername = "localhost";
$username = "root";  
$password = "kkkkta";  
$dbname = "affectiveexperience";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $entered_username = $_POST['username'];
    $entered_password = $_POST['password'];

    $stmt = $conn->prepare("SELECT password FROM LoginAX WHERE username = ?");
    $stmt->bind_param("s", $entered_username);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($hashed_password);
    $stmt->fetch();

    if ($stmt->num_rows > 0 && password_verify($entered_password, $hashed_password)) {
        header("Location: home.html");
        exit();
    } else {
        $error = "Invalid username or password!";
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
    <title>Sign In</title>
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

<h2>Sign In</h2>
<?php if ($error): ?>
    <p style="color: red;"><?php echo $error; ?></p>
<?php endif; ?>
<form method="POST">
    <input type="text" name="username" placeholder="Enter Username" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <button type="submit">Sign In</button>
</form>

</body>
</html>
