<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/Sessions.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object
$center = new Center($db);
if(isset($_GET['username'])){
    $center->UserName = isset($_GET['username']) ? $_GET['username'] : die();
}
$action = isset($_GET['action']) ? $_GET['action'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();
$center->AccessToken = $token;
$CenterId = isset($_GET['CenterId']) ? $_GET['CenterId'] : fieldRequired('CenterId');
$StartDate= isset($_GET['StartDate']) ? $_GET['StartDate'] : fieldRequired('StartDate');
$EndDate = isset($_GET['EndDate']) ? $_GET['EndDate'] : fieldRequired('EndDate');
$IsActive= isset($_GET['IsActive']) ? $_GET['IsActive'] : fieldRequired('IsActive');
$Description = isset($_GET['Description']) ? $_GET['Description'] : fieldRequired('Description');
$SessionId = isset($_GET['SessionId']) ? $_GET['SessionId'] : fieldRequired('SessionId');
$StartTime = isset($_GET['StartTime']) ? $_GET['StartTime'] : fieldRequired('StartTime');
$EndTime = isset($_GET['EndTime']) ? $_GET['EndTime'] : fieldRequired('EndTime');
$CenterLat= isset($_GET['CenterLat']) ? $_GET['CenterLat'] : fieldRequired('CenterLat');
$SessionDate = isset($_GET['SessionDate']) ? $_GET['SessionDate'] : fieldRequired('SessionDate');
$CenterLong = isset($_GET['CenterLong']) ? $_GET['CenterLong'] : fieldRequired('CenterLong');
$SessionActive = isset($_GET['SessionActive']) ? $_GET['SessionActive'] : fieldRequired('SessionActive');

if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "list-cohorts"){
                $response = $center->listCohorts();
                echo json_encode($response);
            }
            if($action == "list-centers"){
                $response = $center->listCenter();
                echo json_encode($response);
            }
            if($action == "list-sessions"){
                $center->CenterId=$CenterId;
                $response = $center->ListCenterSessions();
                echo json_encode($response);
            }
            if($action=="create-session"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $centerObj){
                    $center->SessionId=$centerObj->SessionId;
                    $center->CenterId= $centerObj->CenterId;
                    $center->SessionDate= $centerObj->SessionDate;
                    $center->StartTime= $centerObj->StartTime;
                    $center->EndTime= $centerObj->EndTime;
                    $center->CenterName= $centerObj->CenterName;
                    $center->CenterLat= $centerObj->CenterLat;
                    $center->CenterLong= $centerObj->CenterLong;
                    $center->SessionActive= $centerObj->SessionActive;
                    $center->Description= $centerObj->Description;
                    $response = $center->createcenterSessions();
                } 
                echo json_encode($response);
            }

            if($action == "mark-attendance"){      
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $cSession){
                    $center->SessionId=$cSession->SessionId;
                    $center->CenterId= $cSession->centerId;
                    $center->SessionDate= $cSession->SessionDate;
                    $center->StartTime= $cSession->StartTime;
                    $center->EndTime= $cSession->EndTime;
                    $center->CenterName= $cSession->CenterName;
                    $center->CenterLat= $cSession->CenterLat;
                    $center->CenterLong= $cSession->CenterLong;
                    $center->SessionActive= $cSession->SessionActive;
                    $center->Description= $cSession->Description;
                    $response = $center->createcenterSessions();
                } 
                echo json_encode($response);
            }
          if($action=="update"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $regObj){
                    $student->OOSG_CODE=$regObj->OOSG_CODE;
                    $student->Surname= $regObj->Surname;
                    $student->FirstName= $regObj->FirstName;
                    $student->OtherNames= $regObj->OtherNames;
                    $student->Dob= $regObj->Dob;
                    $student->Gender= $regObj->Gender;
                    $student->Nationality= $regObj->Nationality;
                    $student->County= $regObj->County;
                    $student->Email= $regObj->Email;
                    $student->Mobile= $regObj->Mobile;
                    $student->GuardianName= $regObj->GuardianName;
                    $student->GuardianMobile= $regObj->GuardianMobile;
                    $student->HighestEducationLevel= $regObj->HighestEducationLevel;
                    $student->CenterName= $regObj->CenterName;
                    $student->RegistrationId= $regObj->RegistrationId;
                $response = $student->updateStudentDetails();
                } 
                echo json_encode($response);
            }
            if($action == "end-session"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $cSession){
                    $center->SessionId=$cSession->SessionId;
                    $center->EndTime= $cSession->EndTime;
                    $center->Description= $cSession->Description;
                    $response = $center->updateSession();
                } 
                echo json_encode($response);
                
            }
            
         
              
              
        }
    } 
    
function fieldRequired($fieldName){
    return $fieldName."Is required";
}