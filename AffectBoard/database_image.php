<?php
$conn = new mysqli("localhost", "root", "kkkkta", "affectiveexperience");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$imageData = null; // Initialize
$questions = [
    "Q1" => "Logical Error",
    "Q2" => "Functional Error",
    "Q3" => "Design Error"
];
$responses = ["Q1" => "none", "Q2" => "none", "Q3" => "none"];

if (isset($_GET['No']) && is_numeric($_GET['No'])) {
    $no = intval($_GET['No']);

    // Fetch image from listofanalysis
    $sql = "SELECT Image FROM listofanalysis WHERE No = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $no);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        if (!empty($row['Image'])) {
            $imageData = base64_encode($row['Image']); // Store base64 data
        }
    }
    $stmt->close();

    // Fetch behavioral log responses
    $sql = "SELECT Q1, Q2, Q3 FROM behaviorallogs WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $no);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        $responses = array_merge($responses, array_filter($row)); // Merge, keeping defaults for empty values
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
    <title>Analysis</title>
    <style>
        body {
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        
        header {
            display: flex;
            justify-content: center;
            justify-content: flex-end;
            color: rgb(254, 207, 207);
            align-items: center;
            text-align: center;
            background-color: #30887A;
            z-index: 1000;
            position: fixed;
            font-size: 18px;
            padding-top: 18px;
            padding-bottom: 18px;
            padding-right: 10px;
            padding-left: 10px;
            margin-right: 20%;
            width: 100%;
            left: 0;
            right: 0;
            top: 0;
        }

        .nav__links {
            list-style: none;
            margin: 20;
            padding: 0;
        }

        .nav__links li {
            display: inline-block;
            margin-right: 70px;
            position: relative;
        }

        .nav__links li a {
            font-weight: bold;
            color: white;
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

        .disclaimer {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            display: none;
            align-items: center;
            justify-content: center;
            z-index: 1000;
        }

        .disclaimer-content {
            background: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            position: relative;
            width: 50%;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 15px;
            cursor: pointer;
            font-size: 20px;
        }

        .container {
            position: absolute;
            top: 1700px;
            padding-top: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .image-container {
            margin-top:0px;
            width: 80%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image-container img {
            image-rendering: crisp-edges;
            margin-top:100px;
            width: 100%;
            max-width: 100%;
            height: auto;
            border: 2px solid #30887A;
            border-radius: 10px;
            padding: 5px;
            background-color: white;
            object-fit: contain;
        }

        .BackButton {
            position: fixed;
            top: 20%;
            left: 2%;
            width: 40px;
            height: 40px;
            cursor: pointer;
            transition: opacity 0.3s ease;
        }

        .BackButton:hover {
            opacity: 0.7;
        }

        .list-box {
            display: flex;
            flex-wrap: wrap;
            gap: 50px; /* Adds space between boxes */
            padding: 15px;
            border-radius: 10px;
        }

        .question-box {
            flex: 1; /* Allows flexible sizing */
            min-width: 250px; /* Ensures boxes do not get too small */
            padding: 10px;
            background-color: white; /* Light gray for contrast */
            border-radius: 10px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
        }

        .question-box p {
            margin: 5px 0;
        }

    </style>
</head>
<body>

<header>
    <a href="home.html">
        <img class="Home" src="logo.png" alt="Home">
    </a>
    <nav>
        <ul class="nav__links">
            <li><a href="http://localhost/Capstone/insert.php">Insert</a></li>
            <li><a href="http://localhost/Capstone/database.php">Database</a></li>
        </ul>
    </nav>
</header>

<div id="disclaimer" class="disclaimer">
        <div class="disclaimer-content">
            <span class="close-btn" onclick="closeDisclaimer()">&times;</span>
            <p>To Read Gauge Chart:<br><br>1 = Arrow to 1<br>2 = Arrow to 2<br> 2.5 = Arrow between 2 and 3<br></p>
        </div>
    </div>

<div class="container">
    <?php if ($imageData): ?>
        <div class="image-container">
            <img src="data:image/png;base64,<?= $imageData ?>" alt="Stored Image">
        </div>
    <?php else: ?>
        <p>No image found for this record.</p>
    <?php endif; ?>

    <div class="list-box">
        <?php foreach ($questions as $key => $question): ?>
            <div class="question-box">
                <p><strong><?= $question ?></strong></p>
                <?php
                $responsesArray = explode("\n", htmlspecialchars($responses[$key])); // Split multiple responses if needed
                foreach ($responsesArray as $response):
                ?>
                    <p><?= $response ?></p>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<!-- Back Button -->
<a href="database.php">
    <img class="BackButton" src="https://e7.pngegg.com/pngimages/1002/935/png-clipart-button-arrow-back-arrow-blue-trademark-thumbnail.png" alt="Back">
</a>

<script>
    function closeDisclaimer() {
        document.getElementById("disclaimer").style.display = "none";
    }

    function showDisclaimer() {
        document.getElementById("disclaimer").style.display = "flex";
    }

    window.onload = function () {
        showDisclaimer(); // Always show on page load
    };
        closeDisclaimer
    </script>

</body>
</html>
