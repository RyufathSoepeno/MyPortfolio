<?php
$conn = new mysqli("localhost", "root", "kkkkta", "affectiveexperience");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle status update before fetching records
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['updateStatus'])) {
    $No = intval($_POST['updateStatus']);
    $conn->query("UPDATE listofanalysis SET Status = 'Read' WHERE No = $No");
    echo "Success"; // Response to fetch request
    exit;
}

// Fetch application versions
if (isset($_GET['app'])) {
    $appName = $conn->real_escape_string($_GET['app']);
    $sql = "SELECT No, ApplicationName, Compatibility, Version, LastUpdated, Status FROM listofanalysis WHERE ApplicationName = '$appName' ORDER BY No ASC";
    $result = $conn->query($sql);
} else {
    die("No application specified.");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database - Versions</title>
    <style>
        html { 
            background-color: white; 
        }

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
            font-weight: bold; color: white; 
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

        h2 { 
            position: relative; 
            top: 100px; 
        }

        table { 
            width: 96.5%; 
            border-collapse: collapse; 
            margin-top: 46px; position: 
            absolute; 
            left: 10px; 
        }

        th, td { 
            border: 1px solid #ddd; text-align: left; padding: 8px; 
        }

        th { 
            background-color: #376daf; 
            color: white; 
        }

        tr:nth-child(even) { 
            background-color: #f2f2f2; 
        }

        .enter { 
            text-align: center; 
            vertical-align: middle; 
        }
        .table-btn {
            background-color: rgb(226, 82, 29);
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

        .triangle-button {
            display: inline-block;
            width: 0;
            height: 0;
            border-left: 7px solid transparent;
            border-right: 7px solid transparent;
            border-top: 12px solid black;
            rotate: -90deg;
            cursor: pointer;
        }

        /* Highlight unread rows */
        .unread-row { 
            background-color: lightblue !important; 
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

    <h2>Versions of <?php echo htmlspecialchars($appName); ?></h2>

    <div class="main-content">
        <div>
            <input type="text" id="searchBar" onkeyup="searchTable()" placeholder="Search for applications..." style="position: absolute; left: 10px; width: 1463px; padding-top: 7px; padding-bottom: 7px;">
        </div>
        <table id="appTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Compatibility</th>
                    <th>Version</th>
                    <th>Last Updated</th>
                    <th>Status</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $status = $row['Status'];
                        $rowClass = ($status == 'Unread') ? "class='unread-row'" : "";

                        echo "<tr $rowClass data-id='{$row['No']}' data-status='{$status}'>
                                <td>{$row['No']}</td>
                                <td>{$row['Compatibility']}</td>
                                <td>{$row['Version']}</td>
                                <td>{$row['LastUpdated']}</td>
                                <td class='status-cell'>{$status}</td>
                                <td class='enter'>
                                    <a href='database_image.php?No={$row['No']}' class='status-link'>
                                        <button class='table-btn'>Enter</button>
                                    </a>
                                </td>
                            </tr>";
                    }
                } else {
                    echo "<tr><td colspan='6'>No versions found</td></tr>";
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

            for (let i = 1; i < rows.length; i++) { 
                let cells = rows[i].getElementsByTagName("td");
                let rowMatches = false;

                for (let j = 0; j < cells.length; j++) { 
                    if (cells[j]) {
                        let txtValue = cells[j].textContent || cells[j].innerText;
                        if (txtValue.toLowerCase().indexOf(input) > -1) {
                            rowMatches = true;
                            break;
                        }
                    }
                }
                rows[i].style.display = rowMatches ? "" : "none";
            }
        }

        document.addEventListener("DOMContentLoaded", function() {
            document.querySelectorAll(".status-link").forEach(link => {
                link.addEventListener("click", function(event) {
                    let row = this.closest("tr");
                    let statusCell = row.querySelector(".status-cell");
                    let recordId = row.getAttribute("data-id");

                    fetch("database_list.php", {
                        method: "POST",
                        headers: { "Content-Type": "application/x-www-form-urlencoded" },
                        body: "updateStatus=" + recordId
                    }).then(() => {
                        row.setAttribute("data-status", "Read");
                        statusCell.textContent = "Read";
                        row.classList.remove("unread-row");

                        // Reload the page to persist changes
                        setTimeout(() => {
                            location.reload();
                        }, 500);
                    });
                });
            });
        });
    </script>

</body>
</html>
