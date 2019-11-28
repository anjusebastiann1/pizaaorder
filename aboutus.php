<?php
session_start();
?>

<html>

  <head>
    <title> About | Pizza World</title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/aboutus.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body  background="img/img2.jpeg" style="background-size: cover" >

  
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
          <a class="navbar-brand" href="index.php">Pizza World</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li class="active"><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="index.php"><span class="glyphicon glyphicon-cutlery"></span> Pizza World </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
            (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
            </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
          
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>

            </ul>
            </li>
          </ul>

<?php
}
?>
        </div>

      </div>
    </nav>

    <div class="wide">
        
        <div class="tagline">It's not our <font color="red"><strong>work life</strong></font>, it's our <font color="green"><strong><em>life's work</em>.</strong></font></div>
        <h2><div align="center" class="style1" style="color: white">THE PIZZA STORY</div></h2>
                
        <div align="justify" style="color: white"><h3>The pizza creator’s idea was to come up with an authentic thin crunchy Italiano pizza crust with flavours  that would suit the taste of the African people.<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The first branch Pizza World was opened in Gauteng, in December of 2011. It was an immediate success, five more branches were opened in 2012, to serve the thousands of pizza patriots who ordered their favorite pizza flavors.<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pizza World has become a big challenge for all other international and local pizza brands operating in the South Africa.Pizza World will soon be in your neighborhood to serve you the biggest & tasteful  Pizza in the Southern hemisphere.<br /></h3>

        </div>
        <div align="center" class="style1" style="color: white">Pizza World</div>
        <h3 align="justify" style="color: white" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>&nbsp;The special dough mix of the pizza is rolled right in front of the customer so they can see the entire process of the preparation. The best quality toppings are used to give the customer the famous original Pizza World.<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The affordable prices along with its quality flavours  have made the Pizza World brand the success it is today.
            It is undoubtedly the favorite  party food and the food habit of families and corporate business groups.<br />
                Now Pizza World will invade the other parts of the South Africa.<br /></h3>
        </div>
        <strong>
            <div align="center">Take a “TASTE” bite of an EXCELLENT business opportunity</div></strong></div>
        <br>
    <h3 style=text-align:center "color: white">Order Pizza online from Pizza World near & around you. <h3 style=text-align:center "color: white">We deliver food from your neighborhood Pizza World in your area</h3></h3>
    </div>

<!--      <iframe src="https://www.google.com/maps/place/Le+Cafe/@11.9316155,79.8335933,17z/data=!3m1!4b1!4m5!3m4!1s0x3a53636a24873e45:0x7f1e7ad6a30982dd!8m2!3d11.9316103!4d79.835782" style="width: 250px"></iframe>-->
         </body>
</html>