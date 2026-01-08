<?php

error_reporting(0);  // Disable all error reporting
ini_set('display_errors', 0);  // Ensure errors are not displayed

// Redirect after any error
register_shutdown_function(function() {
    header("Location: home.html");
    exit();
});

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['excel_file'])) {
    $conn = new mysqli("localhost", "root", "kkkkta", "affectiveexperience");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Upload File
    $uploadDir = 'uploads/';
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    $filePath = $uploadDir . basename($_FILES['excel_file']['name']);
    if (move_uploaded_file($_FILES['excel_file']['tmp_name'], $filePath)) {
        $output = shell_exec("py -3 analyze.py " . escapeshellarg($filePath) . " 2>&1");
        echo "<pre>$output</pre>";
    } else {
        die("Error uploading file.");
    }

    // Read CSV File
    $file = fopen($filePath, "r");
    $headers = fgetcsv($file);
    
    $q1_col = array_search("[OPTIONAL] Could you provide the question related to Order of Operations that you believe was intended to be correct, if any?", $headers);
    $q2_col = array_search("3. Name the button(s) that gave the wrong color; mention the wrong color", $headers);
    $q3_col = array_search("4. How would you describe the design errors in a few words?", $headers);
    
    if ($q1_col === false || $q2_col === false || $q3_col === false) {
        die("Error: Required columns not found in the Excel file.");
    }

    // Insert into listofanalysis FIRST
    $appName = $_POST['app-name'];
    $appVersion = $_POST['app-version'];
    $compatibility = $_POST['compatibility'];
    $lastUpdated = date('Y-m-d');
    $collageData = generateCollage();
    
    if ($collageData) {
        $stmt = $conn->prepare("INSERT INTO listofanalysis (ApplicationName, Version, Compatibility, LastUpdated, Image) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $appName, $appVersion, $compatibility, $lastUpdated, $collageData);
        $stmt->send_long_data(4, $collageData);

        if ($stmt->execute()) {
            // Retrieve last inserted No
            $lastInsertID = $stmt->insert_id;
            $stmt->close();
        } else {
            die("Error inserting data into listofanalysis: " . $stmt->error);
        }
    } else {
        die("Error generating collage.");
    }

    // Collect all responses for Q1, Q2, and Q3
    $q1_values = [];
    $q2_values = [];
    $q3_values = [];

    while ($row = fgetcsv($file)) {
        if (!empty($row[$q1_col])) $q1_values[] = trim($row[$q1_col]);
        if (!empty($row[$q2_col])) $q2_values[] = trim($row[$q2_col]);
        if (!empty($row[$q3_col])) $q3_values[] = trim($row[$q3_col]);
    }
    fclose($file);

    // Remove duplicates and join responses into a single string
    $q1 = !empty($q1_values) ? implode("\n", array_unique($q1_values)) : 'none';
    $q2 = !empty($q2_values) ? implode("\n", array_unique($q2_values)) : 'none';
    $q3 = !empty($q3_values) ? implode("\n", array_unique($q3_values)) : 'none';

    // Insert into behaviorallogs using the same ID as No
    $stmt = $conn->prepare("INSERT INTO behaviorallogs (ID, Q1, Q2, Q3) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("isss", $lastInsertID, $q1, $q2, $q3);
    if (!$stmt->execute()) {
        die("Error inserting data into behaviorallogs: " . $stmt->error);
    }
    $stmt->close();

    $conn->close();
    header("Location: home.html");
    exit();
}

// Generate Image Collage
function generateCollage() {
    $imagePaths = [
        'C:\\xampp\\htdocs\\Capstone\\Images\\bar_plot.png',
        'C:\\xampp\\htdocs\\Capstone\\Images\\box_plot.png',
        'C:\\xampp\\htdocs\\Capstone\\Images\\stacked_column_chart.png',
        'C:\\xampp\\htdocs\\Capstone\\Images\\gauge_chart.png'
    ];

    $collageWidth = 1600;
    $collageHeight = 1600;
    $imageSize = $collageWidth / 2;

    $collage = imagecreatetruecolor($collageWidth, $collageHeight);
    $white = imagecolorallocate($collage, 255, 255, 255);
    imagefill($collage, 0, 0, $white);

    $positions = [
        [0, 0], [$imageSize, 0],
        [0, $imageSize], [$imageSize, $imageSize]
    ];

    foreach ($imagePaths as $index => $path) {
        if (file_exists($path)) {
            $img = imagecreatefrompng($path);
            imagecopyresampled(
                $collage, $img, 
                $positions[$index][0], $positions[$index][1], 
                0, 0, $imageSize, $imageSize, 
                imagesx($img), imagesy($img)
            );
            imagedestroy($img);
        } else {
            return false;
        }
    }

    ob_start();
    imagejpeg($collage, null, 100);
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
            width: 6.5%;
            height: 6.5%;
            position: fixed;
            top: 19.5px;
            left: 17px;
        }

        /* Styles for the main content area */
        .main-content {
            padding: 20px;
            margin-top: 95px; /* distance from header*/
            display: flex; 
            justify-content: center;
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
            justify-content: center;
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
            padding: 10px;
            padding-right:50px;
            padding-left:50px;
            background-color: #30887A;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            position: relative;
            top: 50px;
            left: 350px;
        }

        .submit-btn:hover {
            background-color: #256a5d;
        }
    </style>
</head>
<body>
    <header>
        <a href="home.html">
            <img class="Home" src="logo.png">
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
        <form action="insert.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="app-name">App Name</label>
                <input type="text" id="app-name" name="app-name" placeholder="Enter App Name" required>
            </div>

            <div class="form-group">
                <label for="app-version">App Version</label>
                <input type="text" id="app-version" name="app-version" placeholder="Enter App Version" required>
            </div>

            <div class="form-group">
                <label>Compatibility (select one)</label>
                <div class="compatibility-options">
                    <label><input type="radio" name="compatibility" value="Windows" required> Windows</label>
                    <label><input type="radio" name="compatibility" value="Linux"> Linux</label>
                    <label><input type="radio" name="compatibility" value="Mac"> Mac</label>
                    <label><input type="radio" name="compatibility" value="Android"> Android</label>
                    <label><input type="radio" name="compatibility" value="IOS"> IOS</label>
                </div>
            </div>

            <div class="form-group">
                <label for="file-upload">Upload Sheet file (.csv)</label>
                <input type="file" name="excel_file" accept=".csv" required> <!-- .xlsx no longer accepted ya -->
            </div>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>
    <footer>
        <p>All rights reserved ©</p>
    </footer>

    
</body>
</html>
