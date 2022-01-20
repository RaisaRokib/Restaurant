<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "burger";
$conn = new mysqli($servername, $username, $password, $dbname);
session_start();
?>

<body>
    <!--navbar shuru-->
    












<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a href="#" title="Logo">
        <img style="width: 125px;" src="images/logo-removebg-preview.png" alt="Restaurant Logo" class="img-responsive">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact_us.php">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="team.php">Team</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutUs.php">AboutUs</a>
                    </li>
                    <?php
                    if (!isset($_SESSION['login'])) {
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php">Login</a>
                        </li>
                    <?php
                    }
                    ?>
                    <?php
                    if (!isset($_SESSION['login'])) {
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" href="signup.php">Signup</a>
                        </li>
                    <?php
                    }
                    ?>
                    <?php
                    if (isset($_SESSION['login'])) {
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" href="orderDetails.php">Orders</a>
                        </li>
                    <?php
                    }
                    ?>
                    <?php
                    if (isset($_SESSION['login'])) {
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.php">Logout</a>
                        </li>
                    <?php
                    }
                    ?>
                </ul>
    </div>
  </div>
</nav>

    