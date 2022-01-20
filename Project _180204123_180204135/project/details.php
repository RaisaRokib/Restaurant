<link rel="stylesheet" href="css/style.css">
<?php
include "header.php";


$item_id = $_GET['item_id'];
$category_name = $_GET['category_name'];
$sql = "SELECT * FROM $category_name WHERE itemid=$item_id";
$result = $conn->query($sql);
$result1 = $result->fetch_assoc();
?>

<div class="container">
    <h3><?php echo $result1["name"] ?></h3>
    <img class="img_cls" style="width: 500px;" src="images/<?php echo $result1['picture'] ?>" />
    <p><?php echo $result1['description'] ?></p>
    <?php if (isset($_SESSION['login'])) { ?>
        <form action="cart.php" method="GET">
            <input type="hidden" name="item_id" value="<?php echo $result1['itemid'] ?>" />
            <input type="hidden" name="category_name" value="<?php echo $category_name ?>" />
            <input type="text" value="<?php echo $result1['price'] * .95 ?>" disabled />Tk 5% DICOUNT<br/>
            <input type="hidden" name="item_price" value="<?php echo $result1['price'] * .95 ?>" />
            <input type="submit" value="Add to cart" />
        </form>
    <?php } else { ?>
        <p><?php echo $result1['price'] ?>Tk</p> GET 5% DISCOUNT ON LOGIN
    <?php } ?>
</div>

<?php include "footer.php"; ?>