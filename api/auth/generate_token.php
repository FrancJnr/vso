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
  
$Username = isset($_GET['username']) ? $_GET['username'] : die();
$Password = isset($_GET['password']) ? $_GET['password'] : die();
// query users
$query = "
                SELECT CenterName, p.fullname, p.Username, p.UserType, CenterId
                FROM user p
                LEFT JOIN vs_centers ON p.UserId = vs_centers.Efid
                WHERE md5(p.Username) = ? AND p.Password = ?";
      
        // prepare query statement
        $stmt = $conn->prepare($query);
        $stmt->bindValue(1, md5($Username));
        $stmt->bindParam(2, $Password);
     
        // execute query
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
      
  if($row!=null){
    $token=md5($Username.$Password);
    $query2 = "UPDATE user SET access_token = ? WHERE UserId = ?";
    $stmt2 = $conn->prepare($query2);
    $stmt2->bindParam(1, $token);
    $stmt2->bindParam(2, $row['UserId']);
    $stmt2->execute();
    http_response_code(200);
    if($row['UserType']==2){
        echo json_encode(
            array("success_code" => "1", 
            "acess_token" => $token, 
            "user-type"=>"efl",
            "Name"=>$row['fullname'],
            "CenterName"=>$row['CenterName'],
            "CenterId"=>$row['CenterId'],   
            "Username"=>$row['Username'],
            "SecretQuestion"=>$row['secret_question'],
            "SecretAnswer"=>$row['secret_answer']
            
            )
        );
    }if($row['UserType']==1){
        echo json_encode(
            array("success_code" => "1",
            "acess_token" => $token,
            "user-type"=>"coach",
            "Name"=>$row['fullname'],          
            "Username"=>$row['Username'],
            "SecretQuestion"=>$row['secret_question'],
            "SecretAnswer"=>$row['secret_answer'])
        );
    }
    
}else{
  
    // set response code - 404 Not found
    http_response_code(404);
    echo json_encode(
        array("success_code" => "0", "error" => "The user does not exist")
    );
}
