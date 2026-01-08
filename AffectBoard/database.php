<?php
$conn = new mysqli("localhost", "root", "kkkkta", "affectiveexperience");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Select only the latest version for each application
$sql = "SELECT No, ApplicationName, Version, Compatibility, LastUpdated 
        FROM listofanalysis 
        WHERE No IN (SELECT MAX(No) FROM listofanalysis GROUP BY ApplicationName)";
        
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database</title>
    <style>
        /* General styles */
        html { background-color: white; }
        header {
            display: flex;
            justify-content: flex-end;
            color: rgb(254, 207, 207);
            align-items: center;
            text-align: center;
            background-color: #30887A;
            position: fixed;
            font-size: 18px;
            padding: 18px 10px;
            width: 100%;
            left: 0;
            right: 0;
            top: 0;
        }
        .nav__links {
            list-style: none;
            padding: 0;
        }
        .nav__links li {
            display: inline-block;
            margin-right: 70px;
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
        .Home {
            width: 6.5%;
            height: 6.5%;
            position: fixed;
            top: 19.5px;
            left: 17px;
        }
        .main-content {
            padding: 20px;
            margin-top: 95px;
            display: flex;
            justify-content: left;
        }
        table {
            position: relative;
            width: 100%;
            border-collapse: collapse;
            margin-top: 44px;
        }
        th, td {
            border: 1px solid #ddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #376daf;
            color: white;
        }
        tr:nth-child(even) { 
            background-color: #f2f2f2; 
        }
        .enter{
            text-align: center; /* Horizontally center content */
            vertical-align: middle; /* Vertically center content */
        }
        .table-btn {
            background-color:rgb(226, 82, 29);
            color: white;
            font-weight: bold;
            width: 43%;
            padding: 5px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        footer {
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #30887A;
            color: white;
            text-align: left;
        }
    </style>
</head>
<body>
    <header>
        <a href="home.html"><img class="Home" src="logo.png"></a>
        <nav>
            <ul class="nav__links">
                <li><a href="http://localhost/Capstone/insert.php">Insert</a></li>
                <li><a href="http://localhost/Capstone/database.php">Database</a></li>
            </ul>
        </nav>
    </header>

    <div class="main-content">
        <!-- Search bar -->
        <div>
            <input type="text" id="searchBar" onkeyup="searchTable()" placeholder="Search for applications..." style="position: absolute; width: 1463px; padding-top: 7px; padding-bottom: 7px;">
        </div>

        <table id="appTable">
            <thead>
                <tr>
                    <th>Application Name</th>
                    <th>Last Updated</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        // Get unread count for the application
                        $appName = $row['ApplicationName'];
                        $unreadQuery = "SELECT COUNT(*) AS unread_count FROM listofanalysis WHERE ApplicationName='$appName' AND Status='Unread'";
                        $unreadResult = $conn->query($unreadQuery);
                        $unreadRow = $unreadResult->fetch_assoc();
                        $unreadCount = $unreadRow['unread_count'];

                        echo "<tr>
                                <td>{$row['ApplicationName']}</td>
                                <td>{$row['LastUpdated']}</td>
                                <td class='enter'>
                                    <a href='database_list.php?app={$row['ApplicationName']}'>
                                        <button class='table-btn'>Enter" . ($unreadCount > 0 ? " ($unreadCount)" : "") . "</button>
                                    </a>
                                </td>
                              </tr>";
                    }
                } else {
                    echo "<tr><td colspan='3'>No records found</td></tr>";
                }
                $conn->close();
                ?>
            </tbody>
        </table>
    </div>

    <footer>
        <p>All rights reserved &copy;</p>
    </footer>

    <script>
        function searchTable() {
            let input = document.getElementById("searchBar").value.toLowerCase();
            let table = document.getElementById("appTable");
            let rows = table.getElementsByTagName("tr");

            for (let i = 1; i < rows.length; i++) { // Start from 1 to skip the header row
                let cells = rows[i].getElementsByTagName("td");
                let rowMatches = false;

                for (let j = 0; j < cells.length; j++) { // Loop through all columns
                    if (cells[j]) {
                        let txtValue = cells[j].textContent || cells[j].innerText;
                        if (txtValue.toLowerCase().indexOf(input) > -1) {
                            rowMatches = true; // If any column matches, keep the row
                            break; // No need to check further
                        }
                    }
                }
                rows[i].style.display = rowMatches ? "" : "none";
            }
        }
    </script>
</body>
</html>
