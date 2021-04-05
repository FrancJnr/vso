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

$attendance->StudentAttendanceId = isset($_GET['id']) ? $_GET['id'] : die();
$attendance->Attended = isset($_GET['attended']) ? $_GET['attended'] : die();
$attendance->DeviceId = isset($_GET['device_id']) ? $_GET['device_id'] : die();
$attendance->LocationLong = isset($_GET['long']) ? $_GET['long'] : die();
$attendance->LocationLat = isset($_GET['lat']) ? $_GET['lat'] : die();
$attendance->AbsenceReason = isset($_GET['absence_reason']) ? $_GET['absence_reason'] : die();
$attendance->Session = isset($_GET['session']) ? $_GET['session'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();

if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
           
            $attendance->updateAttendance();
               http_response_code(200);
            
                // make it json format
                echo json_encode($attendance->response);
            
        }
    }    