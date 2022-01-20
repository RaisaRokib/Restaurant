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

    <?php include "header.php"; 
    $sql = "SELECT * FROM team";
    $result = $conn->query($sql);
    $result1 = $result->fetch_assoc();
    ?>
    
    <div id="service-section" class="service-container">
        <style>
            .container .col-lg-6 .content img {
                width: 400px;
                height: 600px;
            }
        </style>
    <div class="container">
        <div class="row ">
            <div class="col-lg-6">
                <div class="content">
                    <img class="icon" src="images/raisa.jpg" alt="" />
                    <h3>Raisa Rokib</h3>
                    <p></p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="content">
                    <img class="icon" src="images/zuthi.jpg" alt="" />
                    <h3>Jarin Anjum Zuthi</h3>
                    <p></p>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>

<?php include "footer.php"; ?>