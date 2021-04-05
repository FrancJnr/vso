<?php
include("../../common/common.php");
class Registration{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $RegistrationId;
    public $OOSG_CODE;
    public $GirlName;
    public $Village;
    public $Ward;
    public $Dob;
    public $Efid;
    public $LanguageSpoken;
    public $HouseHeadName;
    public $HouseHeadSex;
    public $HouseHeadSpouseName;
    public $GuardianContact;
    public $GuardianOcupation;
    public $County;
    public $SubCounty;
    public $CenterName;
    public $CohortTitle;
    public $EfName;
    public $CreatedByUser;
    public $CreatedAt;
    public $IsAdmitted;
    public $Comments;

    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function readAll(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                // select all query
            try {
                $sql = "SELECT * FROM `vw_registrations` ORDER BY  CreatedAt DESC ";
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

                return $row;
                
            } catch (Exception $ex) {
                var_dump($ex->getMessage());
                return array('resp_msg'=>'There was an error while fetching the records');
            }
        
    }
    public function insertOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $insertedRId  = 0;
        $query = "INSERT INTO `vs_registrations`(`OOSG_CODE`, `Efid`, 
        `CenterId`, `GirlName`, `Village`, `Ward`,  `LanguageSpoken`,
         `HouseHeadName`, `HouseHeadSex`, `HouseHeadSpouseName`, `Dob`,  `GuardianContact`, 
         `GuardianOcupation`, `details`)
          VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->Efid);
            $stmt->bindParam(3, $this->CenterId);
            $stmt->bindParam(4, $this->GirlName);
            $stmt->bindParam(5, $this->Village);
            $stmt->bindParam(6, $this->Ward);
            $stmt->bindParam(7, $this->LanguageSpoken);
            $stmt->bindParam(8, $this->HouseHeadName);
            $stmt->bindParam(9, $this->HouseHeadSex);
            $stmt->bindParam(10, $this->HouseHeadSpouseName);
            $stmt->bindParam(11, $this->Dob);
            $stmt->bindParam(12, $this->GuardianContact);
            $stmt->bindParam(13, $this->GuardianOcupation);
            $stmt->bindParam(14, $this->details);
            $stmt->execute();
            $insertedRId = $this->conn->lastInsertId();

        } catch (Exception $ex) {
            echo $ex;
        }
        return $insertedRId;
    }
    public function updateRegistration(){
        $updated = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `techsava_vso`.`vs_registrations`
        SET`OOSG_CODE` = ?,  `GirlName` = ?,
        `Village` = ?, `Ward` =?, `LanguageSpoken` = ?,
        `HouseHeadName` = ?,`HouseHeadSex` = ?,
        `HouseHeadSpouseName` = ?, `Dob` = ?, `GuardianContact` = ?,
        `GuardianOcupation` = ?, `details` =?, `UpdatedAt` = current_timestamp
         WHERE RegistrationId = ?";

        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->GirlName);
            $stmt->bindParam(3, $this->Village);
            $stmt->bindParam(4, $this->Ward);
            $stmt->bindParam(5, $this->LanguageSpoken);
            $stmt->bindParam(6, $this->HouseHeadName);
            $stmt->bindParam(7, $this->HouseHeadSex);
            $stmt->bindParam(8, $this->HouseHeadSpouseName);
            $stmt->bindParam(9, $this->Dob);
            $stmt->bindParam(10, $this->GuardianContact);
            $stmt->bindParam(11, $this->GuardianOcupation);
            $stmt->bindParam(12, $this->GuardianMobile);
            $stmt->bindParam(13, $this->details);
            $stmt->bindParam(15, $this->RegistrationId);
            $stmt->execute();
            $updated = true;
        } catch (Exception $ex) {
            echo $ex;
        }
        return $updated;
    }

    public function selectOne(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            // select all query
        try {
            $sql = "SELECT * FROM `vw_registrations` WHERE RegistrationId = ?";
            //execute query
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->RegistrationId);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                return $row;
            }
                
            
        } catch (Exception $ex) {
            echo("Handling exception");
            var_dump($ex->getMessage());
            return array('resp_msg'=>'There was an error while fetching the records');
        }
    
}
public function deleteOne(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
    try {
        $sql = "UPDATE  `vs_registrations` SET isDeleted = true WHERE RegistrationId = ?";
        //execute query
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(1, $this->RegistrationId);
        $stmt->execute();
        
        
    } catch (Exception $ex) {
        echo("Handling exception");
        var_dump($ex->getMessage());
        return array('resp_msg'=>'There was an error while fetching the records');
    }

}
    
}
?>