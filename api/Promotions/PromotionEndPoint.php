<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/Promotions.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object
$Promotion = new Promotion($db);

$action = isset($_GET['action']) ? $_GET['action'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();
$Promotion->AccessToken=$token;
if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "list-promotions"){
                $response = $Promotion->listPromotioRequests();
                echo json_encode($response);
            }
            if($action == "promote"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $promotionObj){
                    $Promotion->OOSG_CODE=$promotionObj->OOSG_CODE;
                    $Promotion->promotion_level= $promotionObj->NextLevel;
                    $Promotion->promoted= $promotionObj->Promoted;
                    $Promotion->comments= $promotionObj->Comments;


                    $response = $Promotion->promotionRequest();
                    echo json_encode($response);
                } 
         
            }
            if($action == "list-transitions"){
                $response = $Promotion->listLevels();
                echo json_encode($response);
            }
                       
              
        }
    } 
    
function fieldRequired($fieldName){
    return $fieldName."Is required";
}