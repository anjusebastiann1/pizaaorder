<?php

include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); 
}



$name = $conn->real_escape_string($_POST['name']);
$id = $conn->real_escape_string($_POST['id']);
$category = $conn->real_escape_string($_POST['category']);
//$price = $conn->real_escape_string($_POST['price']);
$description = $conn->real_escape_string($_POST['description']);


// Storing Session
$user_check=$_SESSION['login_user1'];

//$images_path = $conn->real_escape_string($_POST['img']);

$query = "INSERT INTO pizza (id, category, name, description,M_ID) VALUES('" . $id . "','" . $category . "','" . $name . "','" . $description . "','0')";
$success = $conn->query($query);

if (!$success){

	?>

	<!DOCTYPE html>
	<html>
	<head>
		<title></title>
	<link rel="stylesheet" type = "text/css" href ="css/add_food_items.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
	<body>
	
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Pizza World'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $login_session; ?> </a></li>
            <li class="active"> <a href="managerlogin.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
        </div>

      </div>
    </nav>


	<div class="container">
    <div class="jumbotron">
     <h1>Oops...!!! </h1>
<!--    <p>Kindly enter your pizza shop details before adding pizza items.</p>-->
     <p><a href="add_food_items.php"> Click Me </a></p>

    </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br>
	</body>
	
	</html>

	<?php
	
}
else {
	echo "SUCCESS";
	header('Location: add_food_items.php');
}

$conn->close();


?>