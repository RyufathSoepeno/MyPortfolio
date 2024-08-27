<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Appointment</title>
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
            width: 100%;
            left: 0;
            right: 0;
            top: 0;
        }

        footer {
            padding: 10px;
            background-color: #14d8a7;
            padding: 10px 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
            color: white;
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
            width: 3%;
            height: 3%;
            position: fixed;
            top: 32px;
            left: 6px;
        }
        
        body {
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
           
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #14d8a7;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 98.5%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #14d8a7;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0b9e82;
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
                        <a href="http://localhost/php-projects/Patient.php">Patients List</a>
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

    <div class="container">
        <br><br><br><br>
        <h1>Add Appointment</h1>
        <form action="AddAppointmentDatabase.php" method="POST">
            <label for="patientName">Patient Name:</label>
            <select id="patientName" name="patientName" required>
                <?php
                // PHP code to fetch patient names from the database
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "MentcareDB";

                // Create connection
                $conn = new mysqli($servername, $username, $password, $dbname);

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                // Fetch patient names
                $sql = "SELECT full_name FROM patients";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<option value="' . $row['id'] . '">' . $row['full_name'] . '</option>';
                    }
                } else {
                    echo '<option value="">No Patients Available</option>';
                }

                $conn->close();
                ?>
            </select>

            <label for="startDate">Date and Time:</label>
            <input type="datetime-local" id="startDate" name="startDate" required>

            <br><br>

            <label for="description">Description:</label>
            <input type="text" id="description" name="description" required>

            <label for="appointmentType">Type of Appointment:</label>
            <select id="appointmentType" name="appointmentType" required>
                <option value="Consultation">Consultation</option>
                <option value="Medication Referral">Medication Referral</option>
                <option value="Risk Assessment">Risk Assessment</option>
            </select>

            <input type="submit" value="Add Appointment">
        </form>
    </div>

    <footer>
        <p>&copy; All Rights Reserved</p>
    </footer>
</body>

</html>
