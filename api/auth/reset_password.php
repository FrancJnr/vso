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

$action = isset($_GET['action']) ? $_GET['action'] : die();
if($action == 'reset-secret'){
    $token = isset($_GET['access_token']) ? $_GET['access_token'] : die();

    $SecretQuestion = isset($_GET['SecretQuestion']) ? $_GET['SecretQuestion'] : die();
    $SecretAnswer = isset($_GET['SecretAnswer']) ? $_GET['SecretAnswer'] : die();

    $query2 = "UPDATE user SET access_token = ? WHERE UserId = ?";
    $stmt2 = $conn->prepare("UPDATE user SET secret_question = ? , secret_answer = ? WHERE access_token = ?");
    $stmt2->bindParam(1, $SecretQuestion);
    $stmt2->bindParam(2, $SecretAnswer);
    $stmt2->bindParam(3, $token);
    $stmt2->execute();
    echo json_encode(
        array("success_code" => "1", "msg" => "Secret Question has been updated")
    );
}else if($action == 'reset-password'){
    $newpassword = isset($_GET['NewPassword']) ? $_GET['NewPassword'] : die();
    $SecretQuestion = isset($_GET['SecretQuestion']) ? $_GET['SecretQuestion'] : die();
    $SecretAnswer = isset($_GET['SecretAnswer']) ? $_GET['SecretAnswer'] : die();
    $Username = isset($_GET['Username']) ? $_GET['Username'] : die();


    $stmt = $conn->prepare("SELECT  UserId FROM user WHERE secret_question =? AND secret_answer =? AND Username = ?");
    $stmt->bindParam(1, $SecretQuestion);
    $stmt->bindParam(2, $SecretAnswer);
    $stmt->bindParam(3, $Username);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if($row != null){
        $stmt2 = $conn->prepare("UPDATE user SET Password = ?  WHERE Username = ?");
        $stmt2->bindValue(1, md5($newpassword));
        $stmt2->bindParam(2, $Username);
        $stmt2->execute();
        echo json_encode(
            array("success_code" => "1", "msg" => "Reset successful")
        );
    }else{
        echo json_encode(
            array("success_code" => "0", "msg" => "Question and answer did not match")
        );
    }





  
}



