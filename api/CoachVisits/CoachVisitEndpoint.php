<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/CoachVisit.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object

$coachvisit = new CoachVisit($db);
$action = isset($_GET['action']) ? $_GET['action'] : die();

$token = isset($_GET['access_token']) ? $_GET['access_token'] : fieldRequired('SessionId');
if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "get-notes"){
                $coachvisit->AccessToken=$token;
                $response = $coachvisit->listVisits();
                echo json_encode($response);
            }         
            if($action == "add-note"){      
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $notes){
                    $coachvisit->AccessToken=$token;
                    $coachvisit->Notes=$notes->Notes;
                    $coachvisit->VisitDate=$notes->VisitDate;
                    $coachvisit->Longitude=$notes->Longitude;
                    $coachvisit->Lattitude=$notes->Lattitude;
                    $coachvisit->image = $notes->image;
                    $response=$coachvisit->addCoachNotes();
            
                    
                }
                echo json_encode($response);
            }
            
          if($action=="update-coachvisit"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $scoachvisit){
                    $coachvisit->Comments= $scoachvisit->Comments;
                    $coachvisit->AbsentReason= $scoachvisit->AbsentReason;
                    $coachvisit->coachvisitId= $scoachvisit->coachvisitId;
                $response = $coachvisit->updatecoachvisit();
                } 
                echo json_encode($response);
            }
            if($action=="coachvisit-report"){
                $OOSG_CODE = isset($_GET['oosg-code']) ? $_GET['oosg-code'] : fieldRequired('oosg-code');
                $response = $coachvisit->Studentcoachvisit($OOSG_CODE);
               
                echo json_encode($response);
                
            }
                  
        }
   
         
     
}  
function fieldRequired($fieldName){
    return $fieldName."Is required";
}