<?php
    include "header.php";
    
    if (!isset($_SESSION['login']) || empty($_GET)) {
        header("Location: http://localhost/sd_project");
    }

    $category_name = $_GET['category_name'];
    $item_id = $_GET['item_id'];
    $item_price = $_GET['item_price'];

    $sql = "SELECT * FROM $category_name WHERE itemid=$item_id";
    $result = $conn->query($sql);
    $result1 = $result->fetch_assoc();
    $name = $result1['name'];
    $picture = $result1['picture'];

    $sql2 = "INSERT INTO cart (name,picture,price) VALUES('$name','$picture', '$item_price')";
    $result = $conn->query($sql2);
    header("Location: http://localhost/sd_project/orderDetails.php");

    
?>
<?php include "footer.php"; ?>