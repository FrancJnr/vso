<?php
include("../../common/common.php");
class Student{
  
 // database connection and table name
    private $conn;
 
    // object properties
    public $RegistrationId;
    public $OOSG_CODE;
    public $Surname;
    public $FirstName;
    public $OtherNames;
    public $Dob;
    public $Gender;
    public $Nationality;
    public $County;
    public $Mobile;
    public $GuardianName;
    public $GuardianMobile;
    public $HighestEducationLevel;
    public $CurrentStatus;
    public $Comments;
    public $CenterName;
    public $CohortId;

    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
        public function listAdmitted(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                // select all query
            try {
                $sql = "SELECT a.`RegistrationId`, b.`OOSG_CODE`, `Surname`, `FirstName`, 
                `OtherNames`, `Dob`, `Gender`, `Nationality`, `County`, `Email`, `Mobile`, 
                `GuardianName`, `GuardianMobile`, `HighestEducationLevel`, a.`CurrentStatus`, a.`comments`, IsAdmitted, CenterName
                FROM `vs_registrations` b
                LEFT JOIN `vs_students` a ON a.RegistrationId  = b.RegistrationId";
                //execute query
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetch(PDO::FETCH_ASSOC);
           
                
            } catch (Exception $ex) {
                var_dump($ex->getMessage());
                return array('resp_msg'=>'There was an error while fetching the records');
            }
        
    }
    public function listNotAdmitted(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            // select all query
        try {
            $sql = "SELECT * FROM 
            `vw_registrations` 
            WHERE IsAdmitted = false";
            //execute query
        

            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
           
                $NotAdmitted=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);
                    $RegistrationId=$row['RegistrationId'];
                    $OOSG_CODE=$row['OOSG_CODE'];
                    $GirlName=$row['GirlName'];
                    $Village=$row['Village'];
                    $Ward=$row['Ward'];
                    $Dob=$row['Dob'];
                    $LanguageSpoken=$row['LanguageSpoken'];
                    $HouseHeadName=$row['HouseHeadName'];
                    $HouseHeadSex=$row['HouseHeadSex'];
                    $HouseHeadSpouseName=$row['HouseHeadSpouseName'];
                    $GuardianContact=$row['GuardianContact'];
                    $GuardianOcupation=$row['GuardianOcupation'];
                    $County=$row['County'];
                    $SubCounty=$row['SubCounty'];
                    $CenterName=$row['CenterName'];
                    $CohortTitle=$row['CohortTitle'];
                    $EfName=$row['EfName'];
                    $CreatedByUser=$row['CreatedByUser'];
                    $CreatedAt=$row['CreatedAt'];
                    $IsAdmitted=$row['IsAdmitted'];
                    $Comments= $row['Comments'];
                    if($IsAdmitted!=1)
                    $ListStatus="<span class=\"date badge badge-important\">NotAdmitted</span>";
                    else
                    $ListStatus="<span class=\"date badge badge-info\">Admitted</span>";
                    $ListGirlName="<a href=Admit/$RegistrationId>$GirlName</a> $ListStatus";
                    $viewSession='<a  href=Admit/'.$RegistrationId.'><i class="fa fa-eye"></i></a>';
                    $NotAdmitted[]=array($ListGirlName, $OOSG_CODE, $CenterName, $Dob, $CohortTitle, $EfName, $GuardianContact, $viewSession);
                            
                }
                $common->generateGridData('data3.txt', $NotAdmitted);
               return  $NotAdmitted;
            }else{
                http_response_code(404);
               return array('resp_msg'=>'0 Record Found');
               echo("Handling exception");
            }
            
        } catch (Exception $ex) {
            echo("Handling exception");
            var_dump($ex->getMessage());
            return array('resp_msg'=>'There was an error while fetching the records');
        }
    
}
    public function insertOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $insertedRId  = 0;
        $query = "INSERT INTO `vs_registrations`(`OOSG_CODE`, `Surname`,
         `FirstName`, `OtherNames`, `Dob`, `Gender`, `Nationality`, `County`, `Email`, `Mobile`,
          `GuardianName`, `GuardianMobile`, `HighestEducationLevel`, `IsAdmitted`)
         VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->Surname);
            $stmt->bindParam(3, $this->FirstName);
            $stmt->bindParam(4, $this->OtherNames);
            $stmt->bindParam(5, $this->Dob);
            $stmt->bindParam(6, $this->Gender);
            $stmt->bindParam(7, $this->Nationality);
            $stmt->bindParam(8, $this->County);
            $stmt->bindParam(9, $this->Email);
            $stmt->bindParam(10, $this->Mobile);
            $stmt->bindParam(11, $this->GuardianName);
            $stmt->bindParam(12, $this->GuardianMobile);
            $stmt->bindParam(13, $this->HighestEducationLevel);
            $stmt->bindValue(14, true);
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

        public function admitStudent(){
     
        $isadmited = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            $sql = "INSERT INTO `vs_students`(RegistrationId, OOSG_CODE, CohortId)
            SELECT `RegistrationId`,`OOSG_CODE`, ?
            FROM `vs_registrations` WHERE `RegistrationId` =".$this->RegistrationId;
                $query = "UPDATE `vs_registrations` SET 
                `IsAdmitted` = true
                WHERE RegistrationId = ".$this->RegistrationId;
                try {
                    $stmt1 = $this->conn->prepare($sql);
                    $stmt2 = $this->conn->prepare($query);
                    $stmt1->bindParam(1, $this->CohortId);
                    $stmt1->execute();
                    $stmt2->execute();
                    $isadmited = true;
                } catch (Exception $ex) {
                    // echo $ex;
                    echo($ex);
                    var_dump($stmt1);
                }
       
        
        return $isadmited;
    }
    public function checkIfStudentExist(){
        try{
            $checkIfExists = "SELECT COUNT(OOSG_CODE) FROM vs_students 
            WHERE OOSG_CODE = ?";
            $check = $this->conn->prepare($checkIfExists);
            $check->bindParam(1, $this->OOSG_CODE);
            $check->execute();
            while ($row = $check->fetch(PDO::FETCH_ASSOC)){
            if($row['count']>0){
                return 1;
            }else{
                return 0;
            }
        }
        }catch(Exception $ex){
            echo $ex;
        }
       
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
function listCohorts(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
    try {
        $sql = "SELECT * FROM `vs_cohorts` ";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $cohort=array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);                
                    $cohort[]=array(
                        'CohortId' =>$row['CohortId'],
                        'CohortTitle' => $row['CohortTitle'],
                        'StartDate' => $row['StartDate'],
                        'EndDate' => $row['EndDate'],
                        'IsActive' => $row['IsActive'],
                        'Description' => $row['Description']
                    
                    );                       
            }
            return $cohort;
        }
        
    } catch (Exception $ex) {
        var_dump($ex->getMessage());
        return array('resp_msg'=>'There was an error while fetching the records');
    }

}
function Promotion(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
    try {
        $sql = "SELECT *
        FROM techsava_vso.vs_students
        INNER JOIN vw_registrations ON vw_registrations.OOSG_CODE = vs_students.OOSG_CODE";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $promotion=array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                $GirlName=$row['GirlName'];
                $OOSG_CODE=$row['OOSG_CODE'];
                $CohortTitle=$row['CohortTitle'];
                $EfName=$row['EfName'];
                $CenterName=$row['CenterName'];
                $CurrentStatus=$row['CurrentStatus']; 
                $Comments=$row['Comments'];   
                    $ListGirlName="<a href=Admit/$RegistrationId>$GirlName</a> $ListStatus";
                    $viewSession='<a  href=Admit/'.$RegistrationId.'><i class="fa fa-eye"></i></a>';
                    $Promotion[]=array($GirlName, $OOSG_CODE, $CohortTitle, $EfName, $CenterName, $CurrentStatus, $Comments );
                                 
                                           
            }
            $common->generateGridData('data13.txt', $Promotion);

            return $promotion;
        }
        
    } catch (Exception $ex) {
        var_dump($ex->getMessage());
        return array('resp_msg'=>'There was an error while fetching the records');
    }

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

}
?>