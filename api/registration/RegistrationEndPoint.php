<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/Registration.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();
  
// initialize object
$registration = new Registration($db);
if(isset($_GET['username'])){
    $registration->UserName = isset($_GET['username']) ? $_GET['username'] : die();

}
$action = isset($_GET['action']) ? $_GET['action'] : die();
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();
$registration->AccessToken = $token;

$OOSG_CODE = isset($_GET['OOSG_CODE']) ? $_GET['OOSG_CODE'] : fieldRequired('OOSG_CODE');
$CohortId = isset($_GET['CohortId']) ? $_GET['CohortId'] : fieldRequired('CohortId');
$CenterId = isset($_GET['CenterId']) ? $_GET['CenterId'] : fieldRequired('CenterId');
$GirlName = isset($_GET['GirlName']) ? $_GET['GirlName'] : fieldRequired('GirlName');
$Village = isset($_GET['Village']) ? $_GET['Village'] : fieldRequired('Village');
$Ward = isset($_GET['Ward']) ? $_GET['Ward'] : fieldRequired('Ward');
$LanguageSpoken = isset($_GET['LanguageSpoken']) ? $_GET['LanguageSpoken'] : fieldRequired('LanguageSpoken');
$HouseHeadName = isset($_GET['HouseHeadName']) ? $_GET['HouseHeadName'] : fieldRequired('HouseHeadName');
$HouseHeadSex = isset($_GET['HouseHeadSex']) ? $_GET['HouseHeadSex'] : fieldRequired('HouseHeadSex');
$HouseHeadSpouseName = isset($_GET['HouseHeadSpouseName']) ? $_GET['HouseHeadSpouseName'] : fieldRequired('HouseHeadSpouseName');
$Dob = isset($_GET['Dob']) ? $_GET['Dob'] : fieldRequired('Dob');
$Gender = isset($_GET['Gender']) ? $_GET['Gender'] : fieldRequired('Gender');
$GuardianContact = isset($_GET['GuardianContact']) ? $_GET['GuardianContact'] : fieldRequired('GuardianContact');
$GuardianOcupation = isset($_GET['OOSG_CODE']) ? $_GET['OOSG_CODE'] : fieldRequired('OOSG_CODE');
$IsDeleted = isset($_GET['IsDeleted']) ? $_GET['IsDeleted'] : fieldRequired('IsDeleted');
$CreatedAt = isset($_GET['CreatedAt']) ? $_GET['CreatedAt'] : fieldRequired('CreatedAt');
$UpdatedAt = isset($_GET['UpdatedAt']) ? $_GET['UpdatedAt'] : fieldRequired('UpdatedAt');


if($token==null){
    $response = "Missing access Token";
}else{
        if($database->validateToken($token)==true){
            if($action == "read-all"){
                $response = $registration->readAll();
                echo json_encode($response);
            }
          if($action=="insert"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                $TotalRecords = count($data);
                $inserted = 0;
                foreach($data as $regObj){
                    $inserted++;
                    $registration->OOSG_CODE=$regObj->OOSG_CODE;
                    $registration->CohortId=$regObj->CohortId;
                    $registration->CenterId=$regObj->CenterId;
                    $registration->GirlName=$regObj->GirlName;
                    $registration->Village=$regObj->Village;
                    $registration->Ward=$regObj->Ward;
                    $registration->LanguageSpoken=$regObj->LanguageSpoken;
                    $registration->HouseHeadName=$regObj->HouseHeadName;
                    $registration->HouseHeadSex=$regObj->HouseHeadSex;
                    $registration->HouseHeadSpouseName=$regObj->HouseHeadSpouseName;
                    $registration->Dob=$regObj->Dob;
                    $registration->Gender=$regObj->Gender;
                    $registration->GuardianContact=$regObj->GuardianContact;
                    $registration->GuardianOcupation=$regObj->GuardianOcupation;
                    $registration->IsDeleted=$regObj->IsDeleted;
                    $registration->CreatedAt=$regObj->CreatedAt;
                    $registration->UpdatedAt=$regObj->UpdatedAt;
                    $registration->email=$regObj->Email;
                    $registration->Disability=$regObj->Disability; 
                    $response = $registration->insertOne();
                }
                $registration->RecordsInserted = $inserted."/".$TotalRecords;
                echo json_encode($response);

            }if($action=="update"){
                $json = file_get_contents('php://input');
                $data = json_decode($json);
                foreach($data as $regObj){
                    $registration->OOSG_CODE=$regObj->OOSG_CODE;
                    $registration->Surname= $regObj->Surname;
                    $registration->FirstName= $regObj->FirstName;
                    $registration->OtherNames= $regObj->OtherNames;
                    $registration->Dob= $regObj->Dob;
                    $registration->Gender= $regObj->Gender;
                    $registration->Nationality= $regObj->Nationality;
                    $registration->County= $regObj->County;
                    $registration->Email= $regObj->Email;
                    $registration->Mobile= $regObj->Mobile;
                    $registration->GuardianName= $regObj->GuardianName;
                    $registration->GuardianMobile= $regObj->GuardianMobile;
                    $registration->HighestEducationLevel= $regObj->HighestEducationLevel;
                    $registration->CenterName= $regObj->CenterName;
                    $registration->RegistrationId= $regObj->RegistrationId;
                $response = $registration->updateRegistration();
                } 
                echo json_encode($response);
            }
            
         
              
              
        }
    } 
    
function fieldRequired($fieldName){
    return $fieldName."Is required";
}