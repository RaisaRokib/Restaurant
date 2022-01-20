<link rel="stylesheet" href="css/style.css">
<?php include "header.php"; ?>

<div class="container form-container">
    <div class="form-holder">
        <form action="" method="POST">
            <input type="text" name="username" placeholder="username..." required />
            <input type="password" name="password" placeholder="password..." required />
            <input type="submit" value="Login" />
        </form>
        <div class="signup">
            <p>not logged in yet...</p>
            <p><a href="signup.php">Sign up here</a></p>
        </div>
    </div>

    <?php
    if (isset($_SESSION['login'])) {
        header("Location: http://localhost/sd_project");
    }
    if (!empty($_POST)) {
        $username2 = $_POST['username'];
        $password2 = md5($_POST['password']);

        $sql = "SELECT * FROM login WHERE username='$username2' AND password='$password2'";
        $result = $conn->query($sql);
        if ($result->num_rows == 1) {
            if (!isset($_SESSION['login'])) {
                $_SESSION['login'] = true;
                $_SESSION['username'] = $username;
                $_SESSION['password'] = $password;
                header("Location: http://localhost/sd_project");
            }
        } else {
            echo "user not registerted";
        }
    }
    ?>
</div>
<?php include "footer.php"; ?>