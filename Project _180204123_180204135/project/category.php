<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Project</title>

    <!-- css file connect -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        
    <link rel="stylesheet" href="css/style.css">
</head>

    <?php include "header.php"; ?>
    
<!--navbar shesh-->

<!--search shuru-->
<section class="food-search text-center">
    <div class="container">

        

    </div>
</section>
<!--search shesh-->


<!-- categories shuru-->
<section class="categories">
    

</section>
<!--categories shesh-->



<!-- footer shuru-->
<section class="footer">
    

</section>
<!--footer shesh-->
<div class="items">
    <?php
    $category_name = $_GET['category_name'];
    $sql = "SELECT * FROM $category_name";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
        ?>
            <div class="item">
                <h3><?php echo $row["name"] ?></h3>
                <img src="images/<?php echo $row["picture"] ?>" class="image img">
                <form action="details.php" method="GET">
                    <input type="hidden" name="category_name" value="<?php echo $category_name ?>" />
                    <input type="hidden" name="item_id" value="<?php echo $row["itemid"] ?>" />
                    <input type="submit" value="Show Details" />
                </form>
            </div>
    <?php
        }
    }
    ?>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>

</body>

<?php include "footer.php"; ?>

</html>