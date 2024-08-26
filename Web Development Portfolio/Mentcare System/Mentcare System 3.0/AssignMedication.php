<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "kkkkta";
$dbname = "mentcaredb";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// If form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $patient_id = $_POST['patient_id'];
    $medication_id = $_POST['medication_id'];

    // Insert assignment into AssignMedication table
    $sql = "INSERT INTO AssignMedication (patient_id, medication_id) VALUES (?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ii", $patient_id, $medication_id);

    if ($stmt->execute()) {
        echo "Medication assigned successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

// Fetch patients from Patients table
$patient_sql = "SELECT id, full_name FROM Patients";
$patient_result = $conn->query($patient_sql);

// Fetch medications from Medications table
$medication_sql = "SELECT id, name FROM Medications";
$medication_result = $conn->query($medication_sql);

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Medication</title>
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
            background-color: #14d8a7;
            z-index: 1000; /* Ensure the header is on top of other elements */
            position: fixed;
            font-size: 14px;
            padding-top: 35px;
            padding-bottom: 35px;
            padding-right: 10px;
            padding-left: 10px;
            margin-right: 20%;
            width: 100%; /* Too make sure the header is filled/padded full from left to right */
            left: 0;
            right: 0;
            top: 0;
        }

        footer{
            padding:10px;
            size:5px;
            position: fixed;
            bottom: 0;
            width: 100%;
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
            width: 3%;
            height: 3%;
            position: fixed;
            top: 32px;
            left: 6px;
        }

        /* Center align the main content */
        main {
        max-width: 600px;
        margin: 0 auto;
        text-align: center;
        }

        /* Left-align the form within the main content */
        form {
            text-align: left;
            margin: 0 auto;
            display: inline-block;
            background-color: #f2f2f2;
            padding:22px;
            width: 100%;
        }
        
        label {
            display: inline-block;
            width: 150px; /* Align labels uniformly */
        }

        select {
            margin-bottom: 20px;
            padding: 5px;
            width: calc(100% - 160px); /* Adjust width to align with labels */
        }
        
        input[type="submit"] {
            display: block;
            width: 26%;
            padding: 10px;
            background-color: #14d8a7;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            float: right;
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
                        <a href="http://localhost/php-projects/AddAppointment.php">Add Appointment</a>
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
    <br> <br> <br> <br>
    <main>
    <h1>Assign Medication to Patient</h1>
    
    <form method="POST" action="AssignMedication.php">
        <label for="patient_id">Select Patient:</label>
        <select name="patient_id" id="patient_id" required>
            <option value="">--Select Patient--</option>
            <?php
            if ($patient_result->num_rows > 0) {
                while ($row = $patient_result->fetch_assoc()) {
                    echo "<option value='" . $row['id'] . "'>" . $row['full_name'] . "</option>";
                }
            } else {
                echo "<option value=''>No patients available</option>";
            }
            ?>
        </select>
        <br><br>

        <label for="medication_id">Select Medication:</label>
        <select name="medication_id" id="medication_id" required>
            <option value="">--Select Medication--</option>
            <?php
            if ($medication_result->num_rows > 0) {
                while ($row = $medication_result->fetch_assoc()) {
                    echo "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                }
            } else {
                echo "<option value=''>No medications available</option>";
            }
            ?>
        </select>
        <br><br>

        <input type="submit" value="Assign Medication">
    </form>
    </main>

    <footer>
        <p>&copy; All Rights Reserved</p>
    </footer>

</body>

</html>
