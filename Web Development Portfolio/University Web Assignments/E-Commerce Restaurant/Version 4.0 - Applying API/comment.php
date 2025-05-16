<?php
function readCSV($filename) {
    $rows = [];
    if (($handle = fopen($filename, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $rows[] = $data;
        }
        fclose($handle);
    }
    return $rows;
}

function writeCSV($filename, $rows) {
    $handle = fopen($filename, "w");
    foreach ($rows as $row) {
        fputcsv($handle, $row);
    }
    fclose($handle);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["product_id"]) && isset($_POST["comment"])) {
    $productId = $_POST["product_id"];
    $comment = trim($_POST["comment"]);

    if (!empty($comment)) {
        $filename = "data/product.csv";
        $products = readCSV($filename);

        foreach ($products as &$product) {
            if ($product[0] == $productId) {
                if (empty($product[6])) {
                    $product[6] = $comment; // If empty, add first comment
                } else {
                    $product[6] .= '|' . $comment; // Append comment with a separator
                }
                break;
            }
        }

        writeCSV($filename, $products);
    }
}

header("Location: store.php");
exit;
?>
