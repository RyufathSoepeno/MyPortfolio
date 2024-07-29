<?php

/// BEFORE SENDING TO GITHUB, REMEMBER TO DELETE DATABASE PASSWORD SINCE USERS CAN STEAL IT

// Database connection details
$servername = "localhost";
$username = "root";
$password = "kkkkta"; // Replace with your MySQL password
$dbname = "MentcareDB"; // CREATE DATABASE MentcareDB;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$fullname = $_POST['fullname'];
$dob = $_POST['dob'];
$birthplace = $_POST['birthplace'];
$gender = $_POST['gender'];
$telcode = $_POST['telcode'];
$tel = $_POST['tel'];
$email = $_POST['email'];

// Prepare and execute SQL statement
$sql = "INSERT INTO patients (full_name, date_of_birth, birth_place, gender, telephone_code, telephone_number, email) 
        VALUES (?, ?, ?, ?, ?, ?, ?)"; /// "?" are placeholders for the SQL values

$stmt = $conn->prepare($sql); /// Prepares the SQL statement with placeholders
$stmt->bind_param("sssssss", $fullname, $dob, $birthplace, $gender, $telcode, $tel, $email); /// bind_param connect the html forn values to the php code
// The "sssssss" specifies the type of each parameter --> s stands for string 

if ($stmt->execute()) {
    // Retrieve the unique Patient_ID of the last inserted record
    $patient_id = $conn->insert_id;
    echo "New record created successfully. Patient ID: " . $patient_id;
} else {
    echo "Error: " . $stmt->error;
}

// Close connection
$stmt->close();
$conn->close();
?>
