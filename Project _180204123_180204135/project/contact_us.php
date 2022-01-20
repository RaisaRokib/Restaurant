<link rel="stylesheet" href="css/style.css">
<?php include "header.php"; ?>

<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="saveMessage.php" method="POST">
                    <div class="mb-3">
                        <label>Tell Us Your Name*</label>
                        <input type="text" name="username" value="" class="form-control" placeholder="Your name" required />
                    </div>
                    <div class="mb-3">
                        <label>Enter Your Email*</label>
                        <input type="email" name="useremail" value="" class="form-control" placeholder="Eg. example@email.com" required />
                    </div>

                    <div class="mb-3">
                        <label>Enter Phone Number</label>
                        <input type="text" name="userphone" value="" class="form-control" placeholder="Eg. 01959565656" required />
                    </div>
                    <div class="mb-3">
                        <label>Message</label>
                        <textarea name="usermessage" class="form-control" placeholder="Write us a message" required></textarea>
                    </div>
                    <div class="mb-3">
                        <input type="submit" value="Send message" class="btn btn-primary" />
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</body>



</html>
<?php include "footer.php"; ?>