<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/Attendance.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object
$attendance = new Attendance($db);
$attendance->Username = isset($_GET['username']) ? $_GET['username'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();
if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            $response = $attendance->readOne();
         
              // tell the user no products found
              echo json_encode($response);
        }
    }    