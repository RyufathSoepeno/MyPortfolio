<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['version-name'])) {
    $conn = new mysqli("localhost", "root", "kkkkta", "affectiveexperience");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $versionName = $_POST['version-name'];
    $lastUpdated = date('Y-m-d');

    // Get the last inserted app-name
    $result = $conn->query("SELECT No, ApplicationName, compatibility FROM listofanalysis ORDER BY No DESC LIMIT 1");
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $lastId = $row['No'];
        $appName = $row['ApplicationName'];
        $compatibility = $row['compatibility'];
    } else {
        die("No existing app-name found.");
    }

    // Generate collage
    $collageData = generateCollage();

    if ($collageData) {
        $stmt = $conn->prepare("UPDATE listofanalysis SET Version = ?, LastUpdated = ?, Image = ? WHERE No = ?");
        $stmt->bind_param("sssi", $versionName, $lastUpdated, $collageData, $lastId);

        if ($stmt->execute()) {
            echo "Version updated successfully.";
        } else {
            die("Error updating version: " . $stmt->error);
        }
        $stmt->close();
    } else {
        die("Error generating collage.");
    }

    $conn->close();
}

function generateCollage() {
    $imagePaths = [
        'C:\\Users\\ASUS\\OneDrive - Sampoerna University\\Documents\\HTML CSS JAVASCRIPT\\Human Computer Interaction\\Dashboard\\Matplotlib\\Images\\bar_plot.png',
        'C:\\Users\\ASUS\\OneDrive - Sampoerna University\\Documents\\HTML CSS JAVASCRIPT\\Human Computer Interaction\\Dashboard\\Matplotlib\\Images\\box_plot.png',
        'C:\\Users\\ASUS\\OneDrive - Sampoerna University\\Documents\\HTML CSS JAVASCRIPT\\Human Computer Interaction\\Dashboard\\Matplotlib\\Images\\stacked_column_chart.png',
        'C:\\Users\\ASUS\\OneDrive - Sampoerna University\\Documents\\HTML CSS JAVASCRIPT\\Human Computer Interaction\\Dashboard\\Matplotlib\\Images\\gauge_chart.png'
    ];

    $collage = imagecreatetruecolor(800, 800);
    $white = imagecolorallocate($collage, 255, 255, 255);
    imagefill($collage, 0, 0, $white);

    $positions = [[0, 0], [400, 0], [0, 400], [400, 400]];

    foreach ($imagePaths as $index => $path) {
        if (file_exists($path)) {
            $img = imagecreatefrompng($path);
            imagecopyresized($collage, $img, $positions[$index][0], $positions[$index][1], 0, 0, 400, 400, imagesx($img), imagesy($img));
            imagedestroy($img);
        } else {
            return false;
        }
    }

    ob_start();
    imagepng($collage);
    $collageData = ob_get_clean();
    imagedestroy($collage);
    
    return $collageData;
}
?>


<!DOCTYPE html>
<html>
<head>
<title>Insert Application</title>
    <style>
        /* General styles for the entire page */
        html {
            background-color: white;
        }

        /* Header styles */
        header {
            display: flex;
            justify-content: center;
            justify-content: flex-end;
            color: rgb(254, 207, 207);
            align-items: center;
            text-align: center;
            background-color: #30887A;
            z-index: 1000; /* Ensure the header is on top of other elements */
            position: fixed;
            font-size: 18px;
            padding-top: 18px;
            padding-bottom: 18px;
            padding-right: 10px;
            padding-left: 10px;
            margin-right: 20%;
            width: 100%; /* Too make sure the header is filled/padded full from left to right */
            left: 0;
            right: 0;
            top: 0;
        }

        /* Navigation styles */
        .nav__links {
            list-style: none;
            margin: 20;
            padding: 0;
        }

        .nav__links li {
            display: inline-block;
            margin-right: 70px;
            position: relative; /* Needed for the dropdown */
        }

        .nav__links li a {
            font-weight: bold;
            color: white; /* Header text color*/
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .nav__links li a:hover {
            color: #ffff4d;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #4D4D4F;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #ffff4d;
            color: black;
        }

        .nav__links li:hover .dropdown-content {
            display: block;
        }

        .Home {
            width: 3%;
            height: 3%;
            position: fixed;
            top: 35px;
            left: 6px;
        }

        /* Styles for the main content area */
        .main-content {
            padding: 20px;
            margin-top: 95px; /* distance from header*/
            display: flex; 
            justify-content: left;
        } /* since position is not fixed, it will follow the scroll functionality */

        .news-container {
            max-width: 800px;
            width: 100%;
        }

        .news-box {
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
        }

        .news-item {
            display: flex;
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }

        .news-item:last-child {
            border-bottom: none;
        }

        .news-image {
            flex: 1; /* Flex basically gives some balance to all the contents inside the element*/
            margin-right: 15px;
        }

        .news-image img {
            width: 100%;
            height: auto;
        }

        .news-content {
            flex: 3;
        }

        .news-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .news-text {
            font-size: 14px;
            color: #555;
        }

        footer{
            padding:10px;
            size:5px;
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #30887A;
            color:white;
            text-align: left;
        }



        
        /* Styles for the main content area */
        .main-content {
            padding: 20px;
            margin-top: 105px;
            display: flex;
            justify-content: left;
        }

        .form-group {
            margin-bottom: 10px;
            width: 100%;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"] {
            width: 820px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input[type="file"] {
            width: 820px;
            height: 50px;
            padding: 0px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group .compatibility-options {
            display: flex;
            justify-content: space-between;
            margin-right: 150px;
        }

        .form-group .compatibility-options label {
            flex: 1;
            margin-top:5px;
            text-align: center;
        }

        .form-group .compatibility-options input {
            margin-right: 2px;
        }

        .submit-btn {
            display: block;
            width: 10%;
            padding: 10px;
            background-color: #30887A;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            position: fixed;
            top: 72%;
            right: 2%;
        }

        .submit-btn:hover {
            background-color: #256a5d;
        }
    </style>
</head>
<body>
    <header>
        <a href="home.html">
            <img class="Home" src="237-2378542_icon-symbol-gui-house-home-start-top-check-removebg-preview.png">
        </a>
        <nav>
            <ul class="nav__links">
                <li>
                    <a href="http://localhost/Capstone/insert.php">Insert</a>
                </li>
                <li><a href="http://localhost/Capstone/database.php">Database</a></li>
            </ul>
        </nav>
    </header>
    <div class="main-content">
        <form action="version.php" method="POST">
            <div class="form-group">
                <label for="version-name">Version Name</label>
                <input type="text" id="version-name" name="version-name" placeholder="Enter New Version Name" required>
            </div>
            <button type="submit" class="submit-btn">Update Version</button>
        </form>
    </div>
    <footer>
        <p>All rights reserved ©</p>
    </footer>
</body>
</html>
