<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
// include_once '../objects/student.php';

// instantiate database and product users
$database = new Database();

$conn = $database->getConnection();

// query users
$query = "SELECT `app_id`, `app_name`, `app_version`, `is_current`, `url`
          FROM `apps`";
      
        // prepare query statement
        $stmt = $conn->prepare($query);
        // execute query
        $stmt->execute();
        
        $count = $stmt->rowCount();
        if($count>0){
            $apps = array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $apps[]=array(    
                    'AppId' =>$row['app_id'],
                    'AppName' =>$row['app_name'],
                    'AppVersion' => $row['app_version'],
                    'IsCurrent' => $row['is_current'],
                    'Url' => $row['url']

                ); 
            }                                          
            echo json_encode($apps); 
        }else{
  
    // set response code - 404 Not found
    http_response_code(404);
    echo json_encode(
        array("success_code" => "0", "error" => "No registered apps")
    );
}
