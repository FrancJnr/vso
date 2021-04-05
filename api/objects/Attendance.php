<?php
include("../../modules/common/common.php");
class Attendance{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $AttendanceId;
    public $OOSG_CODE;
    public $SessionId;
    public $PresentTime;
    public $EndTime;
    public $Absent;
    public $AbsentReason;
    public $Comments;
    public $CreatedBy;
    public $DeviceId;
    public $AttendanceDate;
    public $ModifiedBy;
 
  
   
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function listAttendance(){
        $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
            $sql = "SELECT SessionId, SessionDate, StartTime, EndTime, CenterName 
            FROM `vs_sessions` 
            WHERE SessionId =?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->SessionId);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $session=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);
                    $query = "SELECT `AttendanceId`, `OOSG_CODE`, `SessionId`, `Present`, `AttendanceDate`,
                    `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`,  `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`
                     FROM `vs_session_attendance`
                     WHERE SessionId = ?";
                            $stmt2 = $this->conn->prepare($query);
                            $stmt2->bindParam(1, $row['SessionId']);
                            $stmt2->execute();
                            $count2 = $stmt2->rowCount();
                                if($count2>0){
                                    $attendance = array();
                                    while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                        $attendance[]=array(
                                            'AttendanceId' =>$row2['AttendanceId'],
                                            'OOSG_CODE' => $row2['OOSG_CODE'],
                                            'SessionId' => $row2['SessionId'],
                                            'Present' => $row2['Present'],
                                            'PresentTime' => $row2['PresentTime'],
                                            'EndTime' => $row2['EndTime'],
                                            'Absent' => $row2['Absent'],
                                            'AbsentReason' => $row2['AbsentReason'],
                                            'Comments' => $row2['Comments'],
                                            'AttendanceDate' => $row2['AttendanceDate']
                                           
                                        
                                        ); 
                                    }
                                    $session[]=array(
                                        'SessionId' =>$row['SessionId'],
                                        'SessionDate' => $row['SessionDate'],
                                        'StartTime' => $row['StartTime'],
                                        'EndTime' => $row['EndTime'],
                                        'CenterName' => $row['CenterName'],
                                        'Attendance'=>$attendance
                                    );     
                                }else{
                                    $session[]=array(
                                        'SessionId' =>$row['SessionId'],
                                        'SessionDate' => $row['SessionDate'],
                                        'StartTime' => $row['StartTime'],
                                        'EndTime' => $row['EndTime'],
                                        'CenterName' => $row['CenterName'],
                                        'Attendance'=>[]
                                    );     
                                }
                                         
                                 
                }
                return $session;
            }else{
                http_response_code(404);
               return array('resp_msg'=>'0 Record Found');
            }
            
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
            return array('resp_msg'=>'There was an error while fetching the records');
        }
    

}

    public function markAttendance(){     
        $response = array();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "INSERT INTO `vs_session_attendance`(`OOSG_CODE`, `SessionId`, `Present`, `PresentTime`, `EndTime`, 
        `Absent`, `AbsentReason`, `Comments`, `AttendanceDate`, `DeviceId`) 
        VALUES (?,?,?,?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->SessionId);
            $stmt->bindParam(3, $this->Present);
            $stmt->bindParam(4, $this->PresentTime);
            $stmt->bindParam(5, $this->EndTime);
            $stmt->bindParam(6, $this->Absent);
            $stmt->bindParam(7, $this->AbsentReason);
            $stmt->bindParam(8, $this->Comments);
            $stmt->bindParam(9, $this->AttendanceDate);
            $stmt->bindParam(10, $this->DeviceId);

            $stmt->execute();
            $insertedUserId = $this->conn->lastInsertId();

            $response = array('resp_code'=>1, 'marked'=>'true', 'resp_msg'=>'Register marked successfully');
        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'There was an error while marking the register');
            echo $ex;
        }
        return $response;
    }
    public function updateAttendance(){   
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE vs_session_attendance SET 
        AbsentReason = ?, 
        Comments =? 
        WHERE AttendanceId = ?";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->AbsentReason);
            $stmt->bindParam(2, $this->Comments);
            $stmt->bindParam(3, $this->AttendanceId);

            $stmt->execute();

            $this->response = array('resp_code'=>1, 'resp_msg'=>'Register Updated successfully');
        } catch (Exception $ex) {
            $this->response = array('resp_code'=>0, 'resp_msg'=>'There was an error while Updating the register');
            echo $ex;
        }
        return $this->response;
    }
    function StudentAttendance(){
        $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
         
            $query = "SELECT `AttendanceId`, `OOSG_CODE`, `SessionId`, `Present`, `AttendanceDate`,
            `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`,  `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`
                FROM vs_session_attendance WHERE AttendanceDate >= DATE(NOW()) - INTERVAL 7 DAY";
                    $stmt2 = $this->conn->prepare($query);
                    $stmt2->execute();
                    $count2 = $stmt2->rowCount();
                        if($count2>0){
                            $attendance = array();
                            while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                $attendance[]=array(
                                    'AttendanceId' =>$row2['AttendanceId'],
                                    'OOSG_CODE' => $row2['OOSG_CODE'],
                                    'SessionId' => $row2['SessionId'],
                                    'Present' => $row2['Present'],
                                    'PresentTime' => $row2['PresentTime'],
                                    'EndTime' => $row2['EndTime'],
                                    'Comments' => $row2['Comments'],
                                    'AttendanceDate' => $row2['AttendanceDate']
                                    
                                
                                ); 
                            }

                                    
                        }else{
                            http_response_code(404);
                            return [];
                        }            
            
                return $attendance;
            
            
        } catch (Exception $ex) {
            echo $ex;
            return [];
        }
    

}

}
?>