<?php
include("../../common/common.php");
class Staff{
  
    // database connection and table name
    private $conn;
 

        // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    public function readAll($tablename, $filter="WHERE 1"){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            try {
                $sql = "SELECT * FROM ".$tablename." ".$filter;		
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

                return $row;
            } catch (Exception $ex) {
                var_dump($ex);
            }

    }
    public function readOne($tablename, $pk, $id){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $sql = "SELECT * FROM ".$tablename. " WHERE ". $pk ." = ?";
        try{
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $id);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){      
                $row = $stmt->fetch(PDO::FETCH_ASSOC);   
                return $row;      
            } 
        }catch(Exception $ex){
            var_dump($ex);
        }
           
}
    public function insertOne($data, $tablename){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        unset($data['Submit']);
        try {
            $columns = array();
            $bind = '';
                foreach($data as $key => $value){
                    $columns[] = $key;
                }

                $columnString = implode(',', array_keys($data));
                $valueString = implode(',', array_fill(0, count($data), '?'));

                $STH = $this->conn->prepare("INSERT INTO ".$tablename." ({$columnString}) VALUES ({$valueString})");
                $insertedid = $STH->execute(array_values($data));
                if($insertedid!=0){
                    $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                    $password= substr(str_shuffle($permitted_chars), 0, 6);

                    $stmt = $this->conn->prepare("INSERT INTO `user`(`Username`, `Password`, `UserType`, `DOE`, `is_active`, `first_password`, `StaffId`, `fullname`)
                     VALUES (?,?,?,current_date,true,?,?,?)");
                    $stmt->bindParam(1, $data['name']);
                    $stmt->bindValue(2, md5($password));
                    $stmt->bindParam(3, $data['position']);
                    $stmt->bindValue(4, $password);
                    $stmt->bindParam(5, $insertedid);
                    $stmt->bindParam(6, $data['name']);

                    $stmt->execute();

                }
        
                return $insertedid;
        } catch (Exception $ex) {
          
            var_dump($ex);

        }
     
    }
    public function updateStaff(){
        $updated = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `satff` SET `StaffName`=?,`StaffMobile`= ?,
		`StaffPosition`=?,`StaffDOJ`=?,`StaffStatus`=?
		 WHERE StaffId = ?";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->StaffName);
            $stmt->bindParam(2, $this->StaffMobile);
            $stmt->bindParam(3, $this->StaffPosition);
            $stmt->bindParam(4, $this->StaffDOJ);
            $stmt->bindParam(5, $this->StaffStatus);
            $stmt->bindParam(6, $this->StaffId);

            $stmt->execute();
            $updated = true;
        } catch (Exception $ex) {
            echo $ex;
        }
        return $updated;
    }
	
	public function deleteStaff($StaffId){
        $deleted = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `staff` SET `IsDeleted` = true
		 WHERE StaffId = ".$StaffId;
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $deleted = true;
        } catch (Exception $ex) {
            echo $ex;
        }
        return $deleted;
    }
    
    
    
}
?>