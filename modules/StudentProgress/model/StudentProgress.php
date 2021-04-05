<?php
include("../../common/common.php");
class StudentProgress{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $OOSG_CODE;
    

        // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    public function readAll(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

            $sql = "SELECT * FROM `vw_student_scoring_sheet`";
                $stmt = $this->conn->prepare($sql);
                $stmt->execute();
                $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

                return $row;
    }
    public function readOne(){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $sql = "SELECT * FROM `vw_student_scoring_sheet` WHERE OOSG_CODE = ?";
        try{
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->OOSG_CODE);
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
public function StudentProgress(){
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $sql = "SELECT * FROM `vw_student_scoring_sheet` WHERE OOSG_CODE = ?";
    try{
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(1, $this->OOSG_CODE);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){      
            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);   
            return $row;      
        } 
    }catch(Exception $ex){
        echo $ex;
    }
    
       
}
public function AttendanceStat($status, $OOSG_CODE){
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $sql = "SELECT COUNT(AttendanceId) as total_attended, OOSG_CODE
    FROM  vs_session_attendance
    WHERE Present = ? AND OOSG_CODE = ?";
    try{
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(1, $status);
        $stmt->bindParam(2, $OOSG_CODE);
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
public function SessionAttendanceStats(){
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $sql = "SELECT AttendanceId, OOSG_CODE, SessionId, 
    (TIMESTAMPDIFF(MINUTE,PresentTime, EndTime)) as contact_hours, Comments, AttendanceDate
    FROM  vs_session_attendance
    WHERE Present = true AND OOSG_CODE = ?";
    try{
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(1, $this->OOSG_CODE);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){      
            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);   
            return $row;      
        } 
    }catch(Exception $ex){
        echo $ex;
    }
       
}
    
    
    
    
}
?>