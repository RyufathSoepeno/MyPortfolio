<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mentcare IS</title>
    <meta name="author" content="Ryufath">
    <meta name="description" content="Our Official Restaurant Site">
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

        /* Styles for the medication list */
        .table-container {
            margin-top: 100px;
            padding: 20px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            background-color: #f2f2f2;
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #14d8a7;
            color: white;
        }

        td {
            background-color: #fff;
        }

        .message {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
            color: #14d8a7;
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

                <li><a href="Appointments.html">Appointments</a></li> <!-- It will lead directly to calendar-->

                <li><a href="#">Medication Management</a>
                    <div class="dropdown-content">
                        <a href="AddMedication.html">Add Medication</a>
                        <a href="http://localhost/php-projects/medication.php">Medication List</a>
                    </div>
                </li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">User Book</a></li>
            </ul>
        </nav>
    </header>


    <div class="table-container">
        <?php
        // Database connection details
        $servername = "localhost";
        $username = "root";
        $password = "kkkkta";
        $dbname = "MentcareDB";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Handle POST request to add medication
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $name = $_POST['name'];
            $formulation = $_POST['formulation'];
            $class = $_POST['class'];
            $manufacturer = $_POST['manufacturer'];
            $comment = $_POST['comment'];

            $sql = "INSERT INTO medications (name, formulation, class, manufacturer, comment) VALUES ('$name', '$formulation', '$class', '$manufacturer', '$comment')";

            if ($conn->query($sql) === TRUE) {
                echo "<p class='message'>New medication added successfully</p>";
            } else {
                echo "<p class='message'>Error: " . $sql . "<br>" . $conn->error . "</p>";
            }
        }

        // Handle GET request to display medication list
        $sql = "SELECT name, formulation, class, manufacturer, comment FROM medications";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr>
                    <th>Name</th>
                    <th>Formulation</th>
                    <th>Class</th>
                    <th>Manufacturer</th>
                    <th>Descriptions</th>
                </tr>";

            // Output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>" . $row["name"]. "</td>
                        <td>" . $row["formulation"]. "</td>
                        <td>" . $row["class"]. "</td>
                        <td>" . $row["manufacturer"]. "</td>
                        <td>" . $row["comment"]. "</td>
                    </tr>";
            }

            echo "</table>";
        } else {
            echo "<p class='message'>No medications found</p>";
        }

        // Close connection
        $conn->close();
        ?>
    </div>

    <footer>
        <p>All Rights Reserved (c)</p>
    </footer>
</body>

</html>