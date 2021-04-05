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
$action = isset($_GET['action']) ? $_GET['action'] : die();

$token = isset($_GET['access_token']) ? $_GET['access_token'] : fieldRequired('SessionId');
if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "attendance-list"){
                $SessionId = isset($_GET['SessionId']) ? $_GET['SessionId'] : '';
                $attendance->SessionId=$SessionId;
                $response = $attendance->listAttendance();
                echo json_encode($response);
            }         
            if($action == "mark-attendance"){      
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $sAttendance){
                    $attendance->SessionId=$sAttendance->SessionId;
                    $attendance->OOSG_CODE= $sAttendance->OOSG_CODE;
                    $attendance->Present= $sAttendance->Present;
                    $attendance->PresentTime= $sAttendance->PresentTime;
                    $attendance->EndTime= $sAttendance->EndTime;
                    $attendance->Absent= $sAttendance->Absent;
                    $attendance->AttendanceDate= $sAttendance->AttendanceDate;
                    $attendance->Comments= $sAttendance->Comments;
                    $response = $attendance->markAttendance();
                }
                echo json_encode($response);
            }
            
          if($action=="update-attendance"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $sAttendance){
                    $attendance->Comments= $sAttendance->Comments;
                    $attendance->AbsentReason= $sAttendance->AbsentReason;
                    $attendance->AttendanceId= $sAttendance->AttendanceId;
                $response = $attendance->updateAttendance();
                } 
                echo json_encode($response);
            }
            if($action=="attendance-report"){
                $response = $attendance->StudentAttendance();
               
                echo json_encode($response);
                
            }
                  
        }
   
         
     
}  
function fieldRequired($fieldName){
    return $fieldName."Is required";
}