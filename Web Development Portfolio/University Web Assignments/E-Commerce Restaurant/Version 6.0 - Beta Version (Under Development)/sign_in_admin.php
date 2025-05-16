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
    $stmt = $conn->prepare("SELECT id, password, type FROM data WHERE username = ?");
    $stmt->bind_param("s", $input_username);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($user_id, $hashed_password, $user_type);

    if ($stmt->num_rows > 0) {
        $stmt->fetch();

        if (password_verify($input_password, $hashed_password)) {
            if ($user_type === "Admin") {
                $_SESSION['user_id'] = $user_id;
                $_SESSION['username'] = $input_username;
                $_SESSION['role'] = $user_type;
                header("Location: admin.php");
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

if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        http_response_code(403);
        exit("Invalid CSRF token.");
    } 

    $login = strtolower(trim($_POST['username']));
    $password = $_POST['password'];

    $stmt = $pdo->prepare("SELECT id, username, password_hash, role FROM users WHERE LOWER(username) = ?");
    $stmt->execute([$login]);
    $user = $stmt->fetch();

    if ($user && $user['role'] === 'Admin' && password_verify($password, $user['password_hash'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['role'];

        header("Location: admin.php");
        exit();
    } else {
        echo "<script>alert('Access denied or invalid credentials.');</script>";
    }
}
?>

<form method="POST">
    <h3>Admin Login</h3>
    <input type="text" name="username" placeholder="Enter Username" required>
    <input type="password" name="password" id="password" placeholder="Enter Password" required>
    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
    <input type="checkbox" onclick="document.getElementById('password').type = this.checked ? 'text' : 'password';"> Show Password
    <button type="submit">Sign In</button>
</form>

<p><a href="forgot_password.php">Forgot your password?</a></p>