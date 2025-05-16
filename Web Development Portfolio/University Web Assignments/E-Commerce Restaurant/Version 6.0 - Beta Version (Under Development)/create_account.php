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
    $new_password_raw = $_POST['password'];
    $new_email = $_POST['email'];
    $new_country = $_POST['country'];
    $terms_accepted = isset($_POST['terms']);

    if (!$terms_accepted) {
        echo "<script>alert('You must accept the Terms and Conditions to register.');</script>";
    } elseif (!preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/', $new_password_raw)) {
        echo "<script>alert('Password does not meet strength requirements.');</script>";
    } else {
        // Check if username or email already exists (case insensitive)
        $check_stmt = $conn->prepare("SELECT username FROM data WHERE LOWER(username) = LOWER(?) OR LOWER(email) = LOWER(?)");
        $check_stmt->bind_param("ss", $new_username, $new_email);
        $check_stmt->execute();
        $check_stmt->store_result();

        if ($check_stmt->num_rows > 0) {
            echo "<script>alert('Username or Email already exists. Please choose another.');</script>";
        } else {
            // Check if this is the first user
            $result = $conn->query("SELECT COUNT(*) as count FROM data");
            $row = $result->fetch_assoc();
            $new_type = ($row['count'] == 0) ? 'Admin' : 'User';

            $new_password = password_hash($new_password_raw, PASSWORD_DEFAULT);
            $stmt = $conn->prepare("INSERT INTO data (username, password, email, country, type) VALUES (?, ?, ?, ?, ?)");
            $stmt->bind_param("sssss", $new_username, $new_password, $new_email, $new_country, $new_type);

            if ($stmt->execute()) {
                // Send email with MailJet

                $mj = new \Mailjet\Client(getenv('MJ_APIKEY_PUBLIC'), getenv('MJ_APIKEY_PRIVATE'), true, ['version' => 'v3.1']);
                $body = [
                    'Messages' => [
                        [
                            'From' => [
                                'Email' => "you@yourdomain.com",
                                'Name' => "Bebek Nusantara"
                            ],
                            'To' => [
                                [
                                    'Email' => $new_email,
                                    'Name' => $new_username
                                ]
                            ],
                            'Subject' => "Welcome to Bebek Nusantara!",
                            'TextPart' => "Thank you for registering. Please confirm your email by clicking the link below.",
                            'HTMLPart' => "<h3>Welcome!</h3><p>Click <a href='http://yourdomain.com/confirm_email.php?email=" . urlencode($new_email) . "'>here</a> to confirm your email.</p>"
                        ]
                    ]
                ];
                $mj->post(Resources::$Email, ['body' => $body]);

                session_start();
                $_SESSION['username'] = $new_username;
                $_SESSION['role'] = $new_type;
                $_SESSION['email_verified'] = 0;

                header("Location: index.php");
                exit();
            } else {
                echo "<script>alert('Error creating user');</script>";
            }
            $stmt->close();
        }
        $check_stmt->close();
    }
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
    <style>
        .strength { font-size: 0.9em; color: red; }
        .valid { color: green; }
        .toggle-password { cursor: pointer; margin-left: 5px; }
    </style>
</head>

<body>
    <form method="POST" id="createForm">
        <input type="text" name="username" placeholder="Enter Username" required><br><br>

        <input type="email" name="email" placeholder="Enter Email" required><br><br>

        <div>
            <input type="password" name="password" id="password" placeholder="Enter Password" required>
            <span class="toggle-password" id="togglePassword">👁️</span>
        </div>
        <div class="strength" id="passwordHelp">
            Must be at least 8 characters, include uppercase, lowercase, number, and special character.
        </div><br>

        <label for="country">Country of Origin:</label>
        <select name="country" id="country" required>
            <option value="">Loading countries...</option>
        </select><br><br>

        <label>
            <input type="checkbox" name="terms" required>
            I agree to the <a href="terms.html" target="_blank">Terms and Conditions</a>
        </label><br><br>

        <button type="submit">Create Account</button>
    </form>

    <script>
        const passwordInput = document.getElementById('password');
        const togglePassword = document.getElementById('togglePassword');
        const passwordHelp = document.getElementById('passwordHelp');

        togglePassword.addEventListener('click', function () {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.textContent = type === 'password' ? '👁️' : '🙈';
        });

        passwordInput.addEventListener('input', function () {
            const value = passwordInput.value;
            const minLength = value.length >= 8;
            const specialChar = /[\W_]/.test(value);
            const number = /\d/.test(value);
            const lower = /[a-z]/.test(value);
            const upper = /[A-Z]/.test(value);

            let messages = [];
            if (!minLength) messages.push("Min 8 chars");
            if (!specialChar) messages.push("1 special char");
            if (!number) messages.push("1 number");
            if (!lower) messages.push("1 lowercase");
            if (!upper) messages.push("1 uppercase");

            if (messages.length === 0) {
                passwordHelp.textContent = "Strong password ✅";
                passwordHelp.classList.add('valid');
            } else {
                passwordHelp.textContent = "Missing: " + messages.join(", ");
                passwordHelp.classList.remove('valid');
            }
        });

        // Fetch countries and pre-select user's country
        fetch('https://restcountries.com/v3.1/all')
            .then(res => res.json())
            .then(data => {
                const countrySelect = document.getElementById('country');
                countrySelect.innerHTML = "";
                const sortedCountries = data.map(c => c.name.common).sort();
                sortedCountries.forEach(name => {
                    const option = document.createElement('option');
                    option.value = name;
                    option.textContent = name;
                    countrySelect.appendChild(option);
                });

                // Auto-detect user's country
                fetch('https://ipapi.co/json')
                    .then(res => res.json())
                    .then(locData => {
                        const userCountry = locData.country_name;
                        const options = countrySelect.options;
                        for (let i = 0; i < options.length; i++) {
                            if (options[i].value.toLowerCase() === userCountry.toLowerCase()) {
                                options[i].selected = true;
                                break;
                            }
                        }
                    });
            });
    </script>
</body>
</html>
