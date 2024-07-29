<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = ""; // Replace with your MySQL password
$dbname = "MentcareDB";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch patients data
$sql = "SELECT patient_id, full_name, date_of_birth, birth_place, gender, CONCAT(telephone_code, ' ', telephone_number) AS telephone, email FROM patients ORDER BY patient_id ASC";
$result = $conn->query($sql);

$patients = array(); // Arrays are important for dealing with tables and databases
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $patients[] = $row;
    }
}

// Output JSON
header('Content-Type: application/json');
echo json_encode($patients);

// Close connection
$conn->close();
?>
