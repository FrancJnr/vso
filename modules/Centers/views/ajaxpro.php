<?php
$id = isset($_GET['id']) ? $_GET['id'] : '';

include("../../config/database.php");

$database = new Database();
$conn= $database->getConnection();
   $sql = "SELECT * FROM subcounties
    WHERE county_id = ?"; 

$json = [];
   try{
    $stmt=$conn->prepare($sql);
    $stmt->bindParam(1, $id);
    $stmt->execute();
    $num = $stmt->rowCount();
    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $json[$row['id']] = $row['name'];

    }      
    echo json_encode($json);
 
 

}catch(Exception $ex){
    echo $ex;
}

        

?>