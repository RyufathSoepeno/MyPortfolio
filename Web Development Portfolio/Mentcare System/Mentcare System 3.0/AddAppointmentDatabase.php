<?php
// Database connection details
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

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $appointmentId = $_POST['appointmentId'];
    $patientName = $_POST['patientName'];
    $startDate = $_POST['startDate'];
    $description = $_POST['description'];
    $appointmentType = $_POST['appointmentType'];
    $actionType = $_POST['actionType'];

    if ($actionType == 'edit' && !empty($appointmentId)) {
        // Update the existing appointment
        $sql = "UPDATE appointments SET patientName='$patientName', startDate='$startDate', description='$description', appointmentType='$appointmentType' WHERE id='$appointmentId'";
        $action = "updated";
    } else {
        // Insert a new appointment
        $sql = "INSERT INTO appointments (patientName, startDate, description, appointmentType) VALUES ('$patientName', '$startDate', '$description', '$appointmentType')";
        $action = "created";
    }

    if ($conn->query($sql) === TRUE) {
        echo "Appointment $action successfully";
        header("Location: Appointments.html"); // Redirect back to Appointments.html or show a success message
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
