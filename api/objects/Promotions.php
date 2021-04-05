<?php
include("../../modules/common/common.php");
class Promotion{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $OOSG_CODE;
    public $promotion_level;
    public $promoted;
    public $request_by;
    public $comments;
    public $AccessToken;
    

    
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
       
    }
    function listPromotioRequests(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        try {
            $sql = "SELECT * FROM `vw_promotion_request` ";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $center=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);                
                        $center[]=array(
                            'ID'=>$row['promotion_request_id'],
                            'OOSG_CODE'=>$row['OOSG_CODE'],
                            'GirlName'=>$row['GirlName'],
                            'CenterName'=>$row['CenterName'],
                            'CohortTitle'=>$row['CohortTitle'],
                            'promotion_level'=>$row['promotion_level'],
                            'promoted'=>$row['promoted']
                        
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

    public function promotionRequest(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->EflId = $common->get_user_id_token($this->conn, $this->AccessToken);
        $insertedRId  = 0;
        $response = "";
        $query = "INSERT INTO `vs_promotion_request`(`OOSG_CODE`, `promotion_level`, `promoted`, `request_by`, `comments`) 
        VALUES (?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->promotion_level);
            $stmt->bindParam(3, $this->promoted);
            $stmt->bindValue(4, $common->get_user_id_token($this->conn, $this->AccessToken));
            $stmt->bindParam(5, $this->comments);
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
                    $query = "SELECT `SessionId`,  `EflId`, `SessionDate`, `StartTime`, `EndTime`, `CenterName`,
                     `CenterLat`, `CenterLong`, `SessionActive`, `Description`
                      FROM `vs_sessions` WHERE CenterId = ?";
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
function listLevels(){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    try {
        $sql = "SELECT * FROM `transition_levels` WHERE active = true";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $transitions=array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);                
                    $transitions[]=array(
                        'ID'=>$row['id'],
                        'name'=>$row['name'],
                        'Description'=>$row['details']
                    );                       
            }
            return $transitions;
        }else{
            http_response_code(404);
           return [];
        }
        
    } catch (Exception $ex) {
        return [];;
    }

}
    
}
?>