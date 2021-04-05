<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Notes</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="assets/css/master.css">
  </head>
  <body>
    <div class="topnav" id="myTopnav">
      <nav>
      <a href="">Coach Visit</a>
      <a href="#home" class="active">Home</a>
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </nav>
    </div>

    <h1 id="text">CENTER: MORO</h1>
    <?php
     $sql = "select * from visit_images
     LIMIT 1";
     $result = mysqli_query($con,$sql);
     $i=1;
     while($row = mysqli_fetch_array($result)){
      file_put_contents('./images/testing.png', base64_decode($row['image']));
    ?>
    <div class="w3-content w3-display-container">
      <div class="w3-display-container mySlides">
        <img src="modules/coachVisit/images/testing.png" style="">
        <div class="w3-display-bottomleft w3-large w3-container w3-padding-16 w3-black">
        <?php echo 'The ceneter is well organized but lacks basic facilities ' ?>
        </div>
      </div>
    </div>

    <?php $i++; } ?>
    <button class="w3-button w3-display-left w3-black" onclick="plusDivs(-1)">&#10094;</button>
    <button class="w3-button w3-display-right w3-black" onclick="plusDivs(1)">&#10095;</button>

    </div>

<script src="assets/js/index.js"></script>

  </body>
</html>