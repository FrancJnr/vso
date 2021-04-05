<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/studentprogress.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object
$studentProgress = new StudentProgress($db);

$action = isset($_GET['action']) ? $_GET['action'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();
$studentProgress->AccessToken=$token;
if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "list-test-levels"){
                $response = $studentProgress->ListTestMeasures();
                echo json_encode($response);
            }
            if($action == "update-progress"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $progressObj){
                    $studentProgress->OOSG_CODE=$progressObj->OOSG_CODE;
                    $studentProgress->TestLevelId= $progressObj->TestLevelId;
                    $studentProgress->Description= $progressObj->Description;
                    $studentProgress->Passed= $progressObj->Passed;
                    $response = $studentProgress->insertOne();
                    echo json_encode($response);
                } 
         
            }
            if($action =="progress-report"){
                $response = $studentProgress->StudentProgressAll();
                echo json_encode($response);
            }
            if($action =="progress-all"){
                $response = $studentProgress->StudentProgressAll();
                echo json_encode($response);
            }          
              
        }
    } 
    
function fieldRequired($fieldName){
    return $fieldName."Is required";
}