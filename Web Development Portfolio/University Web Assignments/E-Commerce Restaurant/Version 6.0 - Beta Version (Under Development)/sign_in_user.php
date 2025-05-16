<?php
session_start();

$servername = "localhost";
$username = "root";  
$password = "kkkkta";  
$dbname = "bebeknusantara";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("Invalid CSRF token.");
    }

    $input_username = strtolower(trim($_POST['username']));
    $input_password = $_POST['password'];

    $stmt = $conn->prepare("SELECT id, username, password, type FROM data WHERE LOWER(username) = ? OR LOWER(email) = ?");
    $stmt->bind_param("ss", $input_username, $input_username);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($user_id, $username, $hashed_password, $user_type);

    if ($stmt->num_rows > 0) {
        $stmt->fetch();

        if (password_verify($input_password, $hashed_password)) {
            $_SESSION['user_id'] = $user_id;
            $_SESSION['username'] = $username;
            $_SESSION['role'] = $user_type;

            header("Location: index.php");
            exit();
        } else {
            echo "<script>alert('Incorrect password.');</script>";
        }
    } else {
        echo "<script>alert('User not found.');</script>";
    }

    $stmt->close();
}
$conn->close();
?>


<form method="POST">
    <h3>User Login</h3>
    <input type="text" name="username" placeholder="Enter Username or Email" required>
    <input type="password" name="password" id="password" placeholder="Enter Password" required>
    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
    <input type="checkbox" onclick="document.getElementById('password').type = this.checked ? 'text' : 'password';"> Show Password
    <button type="submit">Sign In</button>
</form>

<p><a href="forgot_password.php">Forgot your password?</a></p>