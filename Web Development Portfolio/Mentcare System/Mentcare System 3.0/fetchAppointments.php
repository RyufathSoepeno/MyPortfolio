<?php
            // Database connection details
            $servername = "localhost";
            $username = "root";
            $password = ""; 
            $dbname = "MentcareDB";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT patientName AS title, startDate AS start, description, appointmentType FROM appointments";
$result = $conn->query($sql);

$events = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $events[] = $row;
    }
}

$conn->close();

echo json_encode($events);
?>
