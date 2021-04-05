<?php
include("../../modules/common/common.php");
class Center{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $CohortId;
    public $CohortTitle;
    public $StartDate;
    public $EndDate;
    public $IsActive;
    public $Description;
    public $CreatedBy;  
    public $SessionId; 
    public $EflId; 
    public $StartTime; 
    public $EndTime; 
    public $CenterId;
    public $CenterName; 
    public $CenterLat; 
    public $SessionDate; 
    public $CenterLong; 
    public $SessionActive;
    public $UserName; 
    public $id;
    public $class;
    public $filename;
    public $filesize;
    public $fileurl;
    public $filetype;
    public $session;
    public $description;
    public $uploadedon;
    public $AccessToken;

    
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
       
    }
    function listCohorts(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                // select all query
            try {
                $sql = "SELECT * FROM `vs_cohorts` 
                WHERE IsActive = 1";
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
                }else{
                    http_response_code(404);
                   return array('resp_msg'=>'0 Record Found');
                }
                
            } catch (Exception $ex) {
                var_dump($ex->getMessage());
                return array('resp_msg'=>'There was an error while fetching the records');
            }
        
    }
    function listCenter(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        try {
            $sql = "SELECT * FROM `vs_centers` 
            WHERE Status = 1";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $center=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);                
                        $center[]=array(
                            'CenterId'=>$row['CenterId'],
                            'County'=>$row['County'],
                            'SubCounty'=>$row['SubCounty'],
                            'CenterName'=>$row['CenterName'],
                            'CohortID'=>$row['CohortID'],
                            'Efid'=>$row['Efid'],
                            'LocationLong'=>$row['LocationLong'],
                            'LocationLat'=>$row['LocationLat'],
                            'Status'=>$row['Status']
                        
                        );                       
                }
                return $center;
            }else{
                http_response_code(404);
               return array('resp_msg'=>'0 Record Found');
            }
            
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
            return array('resp_msg'=>'There was an error while fetching the records');
        }
    
}

    public function createCenterSessions(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->EflId = $common->get_user_id_token($this->conn, $this->AccessToken);
        $insertedRId  = 0;
        $response = "";
        $query = "INSERT INTO `vs_sessions`(`SessionId`,  `EflId`, `SessionDate`, `StartTime`, `EndTime`, `CenterId`, `CenterLat`, `CenterLong`, `SessionActive`, `Description`, `CreatedBy`)
         VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->SessionId);
            $stmt->bindParam(2, $this->EflId);
            $stmt->bindParam(3, $this->SessionDate);
            $stmt->bindParam(4, $this->StartTime);
            $stmt->bindParam(5, $this->EndTime);
            $stmt->bindParam(6, $this->CenterId);
            $stmt->bindParam(7, $this->CenterLat);
            $stmt->bindParam(8, $this->CenterLong);
            $stmt->bindParam(9, $this->SessionActive);
            $stmt->bindParam(10, $this->Description);
            $stmt->bindValue(11, $common->get_user_id_token($this->conn, $this->AccessToken));
            $stmt->execute();
            $insertedRId = $this->conn->lastInsertId();
            $response = array('resp_code'=>1, 'resp_msg'=>'Record Inserted', 'record_id'=>$insertedRId);
        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'Operation Failed ', 'error'=>$ex);
        }
        return $response;
    }  
    
function ListCenterSessions(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
            $sql = "SELECT * FROM `vs_centers` 
            WHERE CenterId =?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1, $this->CenterId);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $cohort=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);
                    $query = "SELECT `SessionId`,  `EflId`, `SessionDate`, `StartTime`, `EndTime`, vs_centers.`CenterName`, 
                    `CenterLat`, `CenterLong`, `SessionActive`, `Description`
                     FROM `vs_sessions`
                     INNER JOIN vs_centers ON vs_sessions.CenterId = vs_centers.CenterId
                     WHERE vs_sessions.CenterId = ?";
                            $stmt2 = $this->conn->prepare($query);
                            $stmt2->bindParam(1, $row['CenterId']);
                            $stmt2->execute();
                            $count2 = $stmt2->rowCount();
                                if($count2>0){
                                    $sessions = array();
                                    while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                        $sessions[] = array(
                                            'SessionId'=>$row2['SessionId'],
                                            'SessionDate'=>$row2['SessionDate'],
                                            'StartTime'=>$row2['StartTime'],
                                            'EndTime'=>$row2['EndTime'],
                                            'CenterName'=>$row2['CenterName'],
                                            'CenterLat'=>$row2['CenterLat'],
                                            'CenterLong'=>$row2['CenterLong'],
                                            'SessionActive'=>$row2['SessionActive'],
                                            'Description'=>$row2['Description']
                                        );
                                    }
                                    $center[]=array(
                                        'CenterId' =>$row['CenterId'],
                                        'CenterName' => $row['CenterName'],
                                        'Sessions'=>$sessions
                                    );     
                                }else{
                                    $center[]=array(
                                        'CenterId' =>$row['CenterId'],
                                        'CenterName' => $row['CenterName'],
                                        'Sessions'=>[]
                                    );     
                                }
                                         
                                 
                }
                return $center;
            }else{
                http_response_code(404);
               return array('resp_msg'=>'0 Record Found');
            }
            
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
            return array('resp_msg'=>'There was an error while fetching the records');
        }
    

}
        public function updateSession(){
            $common = new Common();
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            $this->EflId = $common->get_user_id_token($this->conn, $this->AccessToken);
            $insertedRId  = 0;
            $response = "";
            $query = "UPDATE `vs_sessions` SET EndTime = ?, SessionActive = false , Description = ? WHERE SessionId = ?";
            try {
                $stmt = $this->conn->prepare($query);
                $stmt->bindParam(1, $this->EndTime);
                $stmt->bindParam(2, $this->Description);
                $stmt->bindParam(3, $this->SessionId);
                $stmt->execute();
                $response = array('resp_code'=>1, 'resp_msg'=>'Session Ended');
            } catch (Exception $ex) {
                $response = [];
            }
            return $response;
        }  


    
}
?>