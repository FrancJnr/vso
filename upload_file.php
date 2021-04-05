<?php
$message = "";
$allowedExts = array("jpg", "jpeg", "gif", "png", "mp3", "mp4", "wma");
$extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
echo "Printing ".$_FILES["file"]["type"]." ".$_FILES["file"]["size"]." ";

if ((($_FILES["file"]["type"] == "video/mp4")
|| ($_FILES["file"]["type"] == "audio/mp3")
|| ($_FILES["file"]["type"] == "audio/wma")
|| ($_FILES["file"]["type"] == "image/pjpeg")
|| ($_FILES["file"]["type"] == "image/gif")
|| ($_FILES["file"]["type"] == "image/jpeg")
|| ($_FILES["file"]["type"] == "image/png")
|| ($_FILES["file"]["type"] == "audio/mpeg")
|| ($_FILES["file"]["type"] == "video/x-matroska"))

&& ($_FILES["file"]["size"] > 0)
){
  if ($_FILES["file"]["error"] > 0){
	$message = $_FILES["file"]["error"];
    }
  else{
	$class = $_POST['class'];
	$description = $_POST['description'];
	$filename = $_FILES["file"]["name"];
	$filesize = $_FILES["file"]["size"];
	$fileurl =  $_SERVER['HTTP_HOST']."/vso/upload/".$_FILES["file"]["name"];
	$query = "INSERT INTO e_learning_media(class, file_name, file_size, file_url, session, description)
	VALUES('".$class."','".$filename."','".$filesize."','".$fileurl."','".$CURRENTSESSION."','".$description."')";
	$check1=mysqli_query($CONNECTION,$query);
	// echo $query." ".$check1;
    if (file_exists("/var/www/html/vso/upload/" . $_FILES["file"]["name"])) {
		$message = $_FILES["file"]["name"] . " already exists. ";
      }
    else{
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "./upload/" . $_FILES["file"]["name"]);
      $message = "File Uploaded succesfully";
      var_dump($query);
      }
    }
  }
else{
	$message ="The file you are trying to upload is invalid";
  }
?>
