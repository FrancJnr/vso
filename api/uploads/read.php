<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/content.php';
  
// instantiate database and product users
$database = new Database();

$db = $database->getConnection();

// initialize object
$content = new Content($db);
$token = isset($_GET['access_token']) ? $_GET['access_token'] : die();

$response = "";
if($token==null){
    $response = "Missing access Token";
}else{
    if($database->validateToken($token)==true){
        
            $stmt = $content->read();
            $num = $stmt->rowCount();
            if($num>0){
            // create array
            $files_arr=array();
            $files_arr["records"]=array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                    $file_item = array(
                            "id" => $id,
                            "category" => $row['category'],
                            "filename" => $row['file_name'],
                            "filesize" => $row['file_size'],
                            "fileurl" => $row['file_url'],
                            "filetype" => $row['file_type'],
                            "description" => $row['description'],
                            "uploadedon" => $row['uploaded_on']
                        );
                        array_push($files_arr["records"], $file_item);

                    }
                    // set response code - 200 OK
            http_response_code(200);
            // make it json format
            echo json_encode($files_arr);
            }else{
            // set response code - 404 Not found
            http_response_code(404);
            // tell the user no products found
            echo json_encode(
                array("message" => "No Attachment found")
            );
        }

    }else{
        http_response_code(500);
        echo json_encode(
            array("Error" => "Invalid Token")
        );
    }
}

