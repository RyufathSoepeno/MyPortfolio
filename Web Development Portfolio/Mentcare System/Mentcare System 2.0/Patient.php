<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mentcare IS - View Patients</title>
    <meta name="author" content="Ryufath">
    <meta name="description" content="Our Official Patient Management Site">
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

        footer {
            padding: 10px;
            background-color: #14d8a7;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
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
            left: 15px;
        }

        /* Table styles */
        table {
            width: 98%;
            border-collapse: collapse;
            margin: 80px 0 20px;
            position: fixed;
            top: 15px;
        }

        table, th, td {
            border: 1px solid #ddd;
            text-align: left;
        }

        th, td {
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
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

    <main>
    <table>
        <tr>
            <th>Full Name</th>
            <th>Date of Birth</th>
            <th>Birth Place</th>
            <th>Gender</th>
            <th>Telephone</th>
            <th>Email</th>
            <th>Image</th>
        </tr>

        <?php
            // Database connection details
            $servername = "localhost";
            $username = "root";
            $password = "kkkkta"; 
            $dbname = "MentcareDB";

            error_reporting(0);

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Check if form data is submitted
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Handle the image upload
                $target_dir = "\htdocs\php-projects\imgfolder";
                $target_file = $target_dir . basename($_FILES["photo"]["name"]);
                $uploadOk = 1;
                $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

            /*    // Check if image file is a actual image or fake image
                $check = getimagesize($_FILES["photo"]["tmp_name"]);
                if($check !== false) {
                    $uploadOk = 1;
                } else {
                    echo "File is not an image.";
                    $uploadOk = 0;
                }
            */

                // Check if file already exists
                if (file_exists($target_file)) {
                    echo "Sorry, file already exists.";
                    $uploadOk = 0;
                }

                // Check file size
                if ($_FILES["photo"]["size"] > 500000) {
                    echo "Sorry, your file is too large.";
                    $uploadOk = 0;
                }

                // Allow certain file formats
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" 
                && $imageFileType != "gif" ) {
                    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                    $uploadOk = 0;
                }

                // Check if $uploadOk is set to 0 by an error
                if ($uploadOk == 0) {
                    echo "Sorry, your file was not uploaded.";
                // if everything is ok, try to upload file
                } else {
                    if (move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file)) {
                        echo "The file ". htmlspecialchars( basename( $_FILES["photo"]["name"])). " has been uploaded.";
                    } else {
                        echo "Sorry, there was an error uploading your file.";
                    }
                }

                // Prepare and bind
                $stmt = $conn->prepare("INSERT INTO patients (full_name, date_of_birth, birth_place, gender, telephone_code, telephone_number, email, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                $stmt->bind_param("ssssssss", $fullname, $dob, $birthplace, $gender, $telcode, $tel, $email, $target_file);

                // Set parameters and execute
                $fullname = $_POST['fullname'];
                $dob = $_POST['dob'];
                $birthplace = $_POST['birthplace'];
                $gender = $_POST['gender'];
                $telcode = $_POST['telcode'];
                $tel = $_POST['tel'];
                $email = $_POST['email'];
                $stmt->execute();

                echo "<p>New patient added successfully.</p>";

                // Close the statement
                $stmt->close();
            }

            // Fetch data from the 'patients' table
            $sql = "SELECT * FROM patients";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>" . $row["full_name"] . "</td>
                            <td>" . $row["date_of_birth"] . "</td>
                            <td>" . $row["birth_place"] . "</td>
                            <td>" . $row["gender"] . "</td>
                            <td>" . $row["telephone_code"] . " " . $row["telephone_number"] . "</td>
                            <td>" . $row["email"] . "</td>
                            <td><img src='" . $row["image"] . "width='500'></td>
                        </tr>";
                }
            } else {
                echo "<tr><td colspan='8'>No records found :) Please fill from 'Add New Patient'</td></tr>";
            }

            // Close connection
            $conn->close();
        ?>


    </table>
</main>


    <footer>
        <p>All Rights Reserved (c)</p>
    </footer>
</body>

</html>
