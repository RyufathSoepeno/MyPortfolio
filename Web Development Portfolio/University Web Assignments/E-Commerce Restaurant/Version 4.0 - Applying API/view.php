<!-- Specific Page Display (view.php) -->
<?php
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];
    $csv = array_map('str_getcsv', file('data.csv'));
    $found = false;
    
    foreach ($csv as $row) {
        if ($row[0] == $id) {
            echo "<h1>{$row[1]}</h1>";
            echo "<img src='{$row[2]}' alt='{$row[1]}'>";
            echo "<p>{$row[3]}</p>";
            $found = true;
            break;
        }
    }
    
    if (!$found) {
        echo "<h2>404 Not Found</h2><p>The requested item does not exist.</p>";
    }
} else {
    echo "<h2>Invalid Request</h2>";
}
?>
