<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
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
            margin-top: 120px;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            width: 300px;
            padding: 100px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: auto;
            text-align: center;
        }
        .container h3 {
            margin-bottom: 20px;
            font-size: 18px;
            color: #333;
        }
        button {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin: 10px 0;
            background-color: #30887A;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #266e60;
        }
    </style>
</head>
<body>

<header></header>

<?php if (isset($_GET['user_added'])): ?>
    <script>alert("User added!");</script>
<?php endif; ?>

<div class="container">
    <h3>Enter your credentials</h3>
    <button onclick="window.location.href='create_account.php'">Create Account</button>
    <button onclick="window.location.href='sign_in.php'">Sign In</button>
</div>

</body>
</html>
