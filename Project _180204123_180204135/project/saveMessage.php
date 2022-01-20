<?php include "header.php"; ?>
<?php
        if (!empty($_POST)) {
            $name = $_POST['username'];
            $gmail = $_POST['useremail'];
            $phone = $_POST['userphone'];
            $message = $_POST['usermessage'];
            $sql = "INSERT INTO contact (name,gmail,phone,message) VALUES('$name','$gmail','$phone','$message')";
            $result = $conn->query($sql);
        }
        header("Location: http://localhost/sd_project/contact_us.php");
?>