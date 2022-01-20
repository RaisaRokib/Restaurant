<!DOCTYPE html>
<html lang= "en">
<?php include "header.php"; ?>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Restaurant Project</title>

        <!-- css file connect -->
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>

    
        
        <!--navbar shesh-->

        <!--search shuru-->
        <section class="food-search text-center">
            <div class="container">
                
                <form action="food-search.html" method="POST">
                    
                </form>
    
            </div>
        </section>
        <!--search shesh-->


        <!-- categories shuru-->
        <section class="categories">
            

        </section>
        <!--categories shesh-->

        <div class="items">
            <style>
                @media only screen and (max-width: 991px) {
                    .item .picture {
                        max-width: 330px;
                        width: 100%;
                        height: 250px;
                    }
                }
            </style>
            <?php                                                      
                $sql = "SELECT * FROM category";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                    ?>
                    <div class="item">
                        <h3><?php echo $row["categoryname"] ?></h3>
                        <img class="picture" src="images/<?php echo $row["picture"] ?>" class="image">
                        <form action="category.php" method="GET">
                            <input type="hidden" name="category_name" value="<?php echo $row["categoryname"] ?>"/>
                            <input type="submit" value="Show All Items"/>
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