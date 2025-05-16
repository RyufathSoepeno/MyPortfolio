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

// Track IP
$ip_address = $_SERVER['REMOTE_ADDR'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_input = trim($_POST['identifier']);

    // Find user by username or email
    $stmt = $conn->prepare("SELECT id, email FROM data WHERE LOWER(username) = LOWER(?) OR LOWER(email) = LOWER(?) LIMIT 1");
    $stmt->bind_param("ss", $user_input, $user_input);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($user_id, $email);
    $user_exists = $stmt->num_rows > 0;
    if ($user_exists) {
        $stmt->fetch();
    }
    $stmt->close();

    $now = date('Y-m-d H:i:s');
    $hour_ago = date('Y-m-d H:i:s', strtotime('-1 hour'));

    // --- Rate Limit: Per IP ---
    $stmt = $conn->prepare("SELECT COUNT(*) FROM password_reset_requests WHERE ip_address = ? AND requested_at >= ?");
    $stmt->bind_param("ss", $ip_address, $hour_ago);
    $stmt->execute();
    $stmt->bind_result($ip_count);
    $stmt->fetch();
    $stmt->close();

    // --- Rate Limit: Per Account ---
    $account_count = 0;
    if ($user_exists) {
        $stmt = $conn->prepare("SELECT COUNT(*) FROM password_reset_requests WHERE user_id = ? AND requested_at >= ?");
        $stmt->bind_param("is", $user_id, $hour_ago);
        $stmt->execute();
        $stmt->bind_result($account_count);
        $stmt->fetch();
        $stmt->close();
    }

    if ($ip_count >= 3 || $account_count >= 3) {
        // Don't reveal rate limit hit to user; still show vague message
        // WHY: To avoid attackers learning about rate limits and brute-forcing accounts
    } else {
        // If user exists, log request & send email
        if ($user_exists) {
            // Log request
            $stmt = $conn->prepare("INSERT INTO password_reset_requests (user_id, ip_address) VALUES (?, ?)");
            $stmt->bind_param("is", $user_id, $ip_address);
            $stmt->execute();
            $stmt->close();

            // Generate token (valid for e.g., 1 hour)
            $token = bin2hex(random_bytes(32));
            $expiry = date('Y-m-d H:i:s', strtotime('+1 hour'));
            // Store token in a new table or reuse password_reset_requests with token column (choose one)

            // Create table for tokens if not done:
            // CREATE TABLE password_reset_tokens (id INT AUTO_INCREMENT PRIMARY KEY, user_id INT, token VARCHAR(64), expires_at DATETIME);

            $stmt = $conn->prepare("INSERT INTO password_reset_tokens (user_id, token, expires_at) VALUES (?, ?, ?)");
            $stmt->bind_param("iss", $user_id, $token, $expiry);
            $stmt->execute();
            $stmt->close();

            // Send MailJet email
            $mj = new \Mailjet\Client(getenv('MJ_APIKEY_PUBLIC'), getenv('MJ_APIKEY_PRIVATE'), true, ['version' => 'v3.1']);
            $body = [
                'Messages' => [
                    [
                        'From' => ['Email' => "ryufathsoepeno@gmail.com"],
                        'To' => [['Email' => $email]],
                        'Subject' => "Password Reset Request",
                        'TextPart' => "Reset your password using this link: http://yourdomain.com/reset_password.php?token=$token",
                        'HTMLPart' => "<p>We received a request to reset your password. If it was you, click below:</p>
                                       <p><a href='http://yourdomain.com/reset_password.php?token=$token'>Reset Password</a></p>"
                    ]
                ]
            ];
            $mj->post(Resources::$Email, ['body' => $body]);
        }
    }

    // Always show vague message regardless of result
    echo "<script>alert('If your email or username is registered, you will receive an email with instructions on resetting your password.');</script>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
</head>
<body>
    <h2>Forgot Password</h2>
    <p>Please enter your email address or username:</p>
    <form method="POST">
        <input type="text" name="identifier" placeholder="Email or Username" required>
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
