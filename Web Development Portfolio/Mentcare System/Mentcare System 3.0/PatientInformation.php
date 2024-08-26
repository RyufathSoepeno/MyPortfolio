<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mentcare IS - Patient Information</title>
    <link rel="stylesheet" href="home.css">
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
            color: white;
            align-items: center;
            text-align: center;
            background-color: #14d8a7;
            position: fixed;
            font-size: 14px;
            padding-top: 35px;
            padding-bottom: 35px;
            padding-right: 10px;
            padding-left: 10px;
            margin-right: 20%;
            width: 100%;
            left: 0;
            right: 0;
            top: 0;
        }

        footer{
            padding:10px;
            size:5px;
            position: fixed;
            bottom: 0;
            background-color: #14d8a7;
            color:white;
            text-align: left;
        }

        /* Navigation styles */
        .nav__links {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav__links li {
            display: inline-block;
            margin-right: 20px;
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
            width: 4%;
            height: 4%;
            position: fixed;
            top: 32px;
            left: 15px;
        }

        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            margin: 100px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #14d8a7;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #14d8a7;
            color: white;
        }
    </style>
</head>

<body>
<header>
        <a href="index.html">
            <img class="Home" src="237-2378542_icon-symbol-gui-house-home-start-top-check-removebg-preview.png">
        </a>
        <nav>
            <ul class="nav__links">
                <li><a href="AboutUs.html">About Us</a></li>
                <li>
                    <a href="#">Patient Management</a>
                    <div class="dropdown-content">
                        <a href="AddNewPatient.html">Add New Patient</a>
                        <a href="http://localhost/php-projects/Patient.php">Find & Search Patient</a>
                    </div>
                </li>
                <li><a href="#">Appointments</a>
                    <div class="dropdown-content">
                        <a href="AddAppointment.html">Add Appointment</a>
                        <a href="http://localhost/php-projects/Appointments.html">Calendar</a>
                    </div>
                </li>
                <li><a href="#">Medication Management</a>
                    <div class="dropdown-content">
                        <a href="AddMedication.html">Add Medication</a>
                        <a href="http://localhost/php-projects/medication.php">Medication List</a>
                        <a href="http://localhost/php-projects/AssignMedication.php">Assign Medication</a>
                    </div>
                </li>
                <li><a href="#">Reports</a></li>
                <li><a href="UserGuide.html">User Book</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Patient Information</h1>
        <?php
        // Get the patient ID from the URL
        $patient_id = $_GET['id'];

        // Database connection
        $servername = "localhost";
        $username = "root";
        $password = "kkkkta";
        $dbname = "MentcareDB";
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        error_reporting(0);

        // Fetch patient information
        $sql = "SELECT * FROM patients WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $patient_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $patient = $result->fetch_assoc();

        if ($patient) {
            echo "<table>";
            echo "<tr><th>Full Name</th><td>" . $patient['full_name'] . "</td></tr>";
            echo "<tr><th>Date of Birth</th><td>" . $patient['date_of_birth'] . "</td></tr>";
            echo "<tr><th>Birth Place</th><td>" . $patient['birth_place'] . "</td></tr>";
            echo "<tr><th>Gender</th><td>" . $patient['gender'] . "</td></tr>";
            echo "<tr><th>Telephone</th><td>" . $patient['telephone_code'] . " " . $patient['telephone_number'] . "</td></tr>";
            echo "<tr><th>Email</th><td>" . $patient['email'] . "</td></tr>";
            echo "<tr><th>Image</th><td><img src='" . $patient['image'] . "' alt='Patient Image' style='width: 150px; height: auto;'></td></tr>";
            echo "</table>";
        } else {
            echo "<p>No patient found.</p>";
        }

        // Count medications assigned to the patient
        $sql = "SELECT COUNT(*) AS medication_count FROM AssignMedication WHERE patient_id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $patient_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $medication_count = $result->fetch_assoc();

        echo "<p><strong>Number of Medications Assigned:</strong> " . $medication_count['medication_count'] . "</p>";

        $stmt->close();
        $conn->close();
        ?>
    </div>

    <footer>
        <p>&copy; All Rights Reserved</p>
    </footer>

</body>

</html>
