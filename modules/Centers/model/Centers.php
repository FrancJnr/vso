<?php
include("../../common/common.php");
class Center{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $CenterId;
    public $CohortID;
    public $SubCountyId;
    public $CenterName;
    public $LocationLat;
    public $LocationLong;
    public $fullname;
    public $Status;
    public $Efid;

        // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    public function readAll(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

            $sql = "SELECT * FROM `vw_centers` ORDER BY CenterId ASC";
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

                return $row;
    }
    public function readOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $sql = "SELECT * FROM `vw_centers` WHERE CenterId = ?";
        try{
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->CenterId);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){      
                $row = $stmt->fetch(PDO::FETCH_ASSOC);   
                return $row;      
            } 
        }catch(Exception $ex){
            echo $ex;
        }
           
}
    public function insertOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $insertedRId  = 0;
        $query = "INSERT INTO `vs_centers`( `SubCountyId`, `CenterName`,  `Efid`, `LocationLong`, `LocationLat`, `Status`, `CohortID`)
		 VALUES (?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->SubCountyId);
            $stmt->bindParam(2, $this->CenterName);
            $stmt->bindParam(3, $this->Efid);
            $stmt->bindParam(4, $this->LocationLong);
            $stmt->bindParam(5, $this->LocationLat);
            $stmt->bindParam(6, $this->Status);
            $stmt->bindParam(7, $this->CohortID);

            $stmt->execute();
            $insertedRId = $this->conn->lastInsertId();

        } catch (Exception $ex) {
            echo $ex ;
            var_dump($stmt);

        }
        return $insertedRId;
    }
    public function updateCenter(){
        $updated = false;

        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `vs_centers` SET `SubCountyId`= ?,
		`CenterName`=?,`Efid`=?,`LocationLong`=?,`LocationLat`=?,`Status`= ?, CohortID = ?
		 WHERE CenterId = ?";
        try {
        
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $SubCountyId);
            $stmt->bindParam(2, $this->CenterName);
            $stmt->bindParam(3, $this->Efid);
            $stmt->bindParam(4, $this->LocationLong);
            $stmt->bindParam(5, $this->LocationLat);
            $stmt->bindParam(6, $this->Status);
            $stmt->bindParam(7, $this->CohortID);
            $stmt->bindParam(8, $this->CenterId);

            $stmt->execute();
            $updated = true;
        } catch (Exception $ex) {
            print_r($ex);
        }
        return $updated;
    }
	
	public function deleteCenter(){
        $deleted = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `vs_centers` SET `isDeleted` = true
		 WHERE CenterId = ".$this->CenterId;
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $deleted = true;
        } catch (Exception $ex) {
            echo $ex;
        }
        return $deleted;
    }
    public function getSubCountyId($name){
        $id = 1;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "SELECT id FROM  subcounties WHERE name = '".$name."'"; 
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){      
                $row = $stmt->fetch(PDO::FETCH_ASSOC);   
                $id= $row['id'];      
            } 
            echo $id;
        } catch (Exception $ex) {
            print_r($ex);
        }
        return $id;
    }
    public function getStaffId($name){
        $id = 1;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "SELECT StaffId AS id FROM  staff WHERE StaffName = '".$name."'"; 
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){      
                $row = $stmt->fetch(PDO::FETCH_ASSOC);   
                $id= $row['id'];      
            } 
            echo $id;
        } catch (Exception $ex) {
            print_r($ex);
        }
        return $id;
    }
    
    
    
}
?>