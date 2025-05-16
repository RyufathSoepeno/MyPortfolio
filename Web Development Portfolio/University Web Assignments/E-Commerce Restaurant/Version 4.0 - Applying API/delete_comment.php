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

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["product_id"]) && isset($_POST["comment_index"])) {
    $productId = $_POST["product_id"];
    $commentIndex = intval($_POST["comment_index"]);

    $filename = "data/product.csv";
    $products = readCSV($filename);

    foreach ($products as &$product) {
        if ($product[0] == $productId) {
            $comments = explode('|', $product[6]);
            array_splice($comments, $commentIndex, 1); // Remove selected comment
            $product[6] = implode('|', $comments);
            break;
        }
    }

    writeCSV($filename, $products);
}

header("Location: store.php");
exit;
?>
