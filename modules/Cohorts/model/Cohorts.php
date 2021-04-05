<?php
include("../../common/common.php");
class Cohorts{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $CohortId;
    public $CohortTitle;
    public $CohortYear;
    public $Description;
    public $CreatedBy;
    public $IsActive;
    public $EndDate;
    public $StartDate;
    

        // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    public function readAll(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

               $sql = "SELECT * FROM `vs_cohorts`";
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $row;
                
    }
    public function readOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $sql = "SELECT * FROM `vs_cohorts` WHERE CohortId = ?";
        try{
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->CohortId);
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
        $query = "INSERT INTO `vs_cohorts`(`CohortTitle`, `IsActive`,
         `Description`, `CreatedBy`, `CohortYear`, `EndDate`, `StartDate`)
         VALUES(?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->CohortTitle);
            $stmt->bindParam(2, $this->IsActive);
            $stmt->bindParam(3, $this->Description);
            $stmt->bindParam(4, $this->CreatedBy);
            $stmt->bindParam(5, $this->CohortYear);
            $stmt->bindParam(6, $this->EndDate);
            $stmt->bindParam(7, $this->StartDate);
            $stmt->execute();
            $insertedRId = $this->conn->lastInsertId();

        } catch (Exception $ex) {
            echo $ex ;
            var_dump($stmt);

        }
        return $insertedRId;
    }
    public function updateCohort(){
        $updated = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE `vs_cohorts` SET 
        `CohortTitle`= ?,`IsActive`= ?,`Description`= ?, `StartDate`= ?, `EndDate`= ?
         WHERE CohortId = ?";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->CohortTitle);
            $stmt->bindParam(2, $this->IsActive);
            $stmt->bindParam(3, $this->Description);
            $stmt->bindParam(4, $this->StartDate);
            $stmt->bindParam(5, $this->EndDate);
            $stmt->execute();
            $updated = true;
        } catch (Exception $ex) {
            echo $ex;
        }
        return $updated;
    }
    function ReadCohortSessions(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            // select all query
            try {
                $sql = "SELECT * FROM `vs_cohorts` 
                WHERE CohortId =?";
                $stmt = $this->conn->prepare($sql);
                $stmt->bindParam(1, $this->CohortId);
                $stmt->execute();
                $num = $stmt->rowCount();
                if($num>0){
                    $cohort=array();
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                        extract($row);
                        $query = "SELECT `SessionId`,  `fullname`, `SessionDate`, `StartTime`, `EndTime`, `CenterName`,
                        `CenterLat`, `CenterLong`, `SessionActive`, `Description`
                         FROM `vs_sessions` 
                         INNER JOIN user ON user.UserId = vs_sessions.Eflid
                          WHERE CohortId = ?";
                                $stmt2 = $this->conn->prepare($query);
                                $stmt2->bindParam(1, $row['CohortId']);
                                $stmt2->execute();
                                $count = $stmt2->rowCount();
                                    if($count>0){
                                        $sessions = array();
                                        while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                                // $sessionStatus = "Ended";
                                                $SessionId=$row2['SessionId'];
                                                $SessionDate=$row2['SessionDate'];
                                                $StartTime=$row2['StartTime'];
                                                $EndTime=$row2['EndTime'];
                                                $CenterName=$row2['CenterName'];
                                                $EfName=$row2['fullname'];
                                                $SessionActive=$row2['SessionActive'];
                                                if($SessionActive = 1){
                                                    $sessionStatus = '<span  style="color: green;">●</span>';  
                                                }else{
                                                    $sessionStatus = '<span  style="color: red;">●</span>';
                                                     
                                                }
                                            $viewSession='<a class="viewuser" href="sessionClassList/'.$SessionId.'"><i class="fa fa-eye"></i></a>';
                                            $sessions[] = array( $SessionId,$SessionDate,$StartTime,$EndTime,$CenterName,$sessionStatus,$viewSession );
                                        }
                                        $common->generateGridData('data9.txt', $sessions);

                                    }
                                    
                    }
                    return $cohort;
                }
                
            } catch (Exception $ex) {
                var_dump($ex->getMessage());
                return array('resp_msg'=>'There was an error while fetching the records');
            }
        
    
    }
    function listAttendance($attended){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            // select all query
        try {
            $queryP = "SELECT `AttendanceId`, a.`OOSG_CODE`, `SessionId`,  `AttendanceDate`, `Present`,
            `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`, a.`GirlName`,
            `Dob`,  `CenterName`
            FROM `vs_session_attendance` 
            INNER JOIN `vw_registrations` a ON `vs_session_attendance`.`OOSG_CODE` = `a`.`OOSG_CODE`
            WHERE SessionId = ? AND Present= 1";

            $queryA = "SELECT `AttendanceId`, a.`OOSG_CODE`, `SessionId`,  `AttendanceDate`, `Present`,
            `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`, a.`GirlName`,
            `Dob`,  `CenterName`
            FROM `vs_session_attendance` 
            INNER JOIN `vw_registrations` a ON `vs_session_attendance`.`OOSG_CODE` = `a`.`OOSG_CODE`
            WHERE SessionId = ? AND Absent= 1";
            
            if($attended == true){  
                $stmt = $this->conn->prepare($queryP);
                $stmt->bindParam(1, $this->SessionId);
                $stmt->execute(); 
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
                return $row;
            }else{
                $stmt = $this->conn->prepare($queryA);
                $stmt->bindParam(1, $this->SessionId);
                $stmt->execute(); 
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
                return $row;

            }
        
            
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
            return array('resp_code'=>0, 'resp_msg'=>'There was an error while fetching the register');
        }
    
}
function listSessions(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
                $query = "SELECT COUNT(AttendanceId) as totalStudents, vs_sessions.`SessionId`,  `fullname`, `SessionDate`, `StartTime`, vs_sessions.`EndTime`, `CenterName`,
                `CenterLat`, `CenterLong`, `SessionActive`, `Description`
                FROM `vs_sessions` 
                INNER JOIN user ON user.UserId = vs_sessions.Eflid
                LEFT JOIN vs_session_attendance ON vs_sessions.SessionId = vs_session_attendance.SessionId
                GROUP BY `SessionId`,  `fullname`, `SessionDate`, `StartTime`, `EndTime`, `CenterName`, `CenterLat`, `CenterLong`, `SessionActive`, `Description`";
                $stmt = $this->conn->prepare($query); 
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
                return $row;        
            }catch( Exception $ex){

            }
    }
        
    
}
    


    

?>

