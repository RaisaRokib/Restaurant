<?php
include "header.php";

if (isset($_SESSION['login'])) {
    $sql = "DELETE FROM cart";
    $conn->query($sql);
    session_unset();
    session_destroy();
}
header("Location: http://localhost/sd_project");


?>

<?php include "footer.php"; ?>