<?php
include("../../modules/common/common.php");
class StudentProgress{
  
    // database connection and table name
    private $conn;  

    public $TestCategoryId;
    public $OOSG_CODE;
    public $Passed;
    public $Description;
    public $EnteredAt;
    public $AccessToken;
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

function ListTestMeasures(){
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
            $sql = "SELECT * FROM `vs_test_category`;
            -- WHERE TestCategoryId =?";
            $stmt = $this->conn->prepare($sql);
            // $stmt->bindParam(1, $this->TestCategoryId);
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $testcategories=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);      
                    $query = "SELECT * FROM `vs_test_group`
                                WHERE TestCategoryId = ?";
                                    $stmt2 = $this->conn->prepare($query);
                                    $stmt2->bindParam(1, $row['TestCategoryId']);
                                    $stmt2->execute();
                                    $count2 = $stmt2->rowCount();
                                        if($count2>0){
                                            $testgroups = array();
                                            while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                                $query2 = "SELECT * FROM vs_test_levels
                                                WHERE TestGroupId = ?";
                                                $stmt3 = $this->conn->prepare($query2);
                                                $stmt3->bindParam(1, $row2['TestGroupId']);
                                                $stmt3->execute();
                                                $count3 = $stmt3->rowCount();
                                                if($count3>0){
                                                    $testlevels = array(); 
                                                    while($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){
                                                        $testlevels[] = array(
                                                            'TestLeveId'=>$row3['TestLeveId'],
                                                            'TestGroupId'=>$row3['TestGroupId'],
                                                            'TestLevelName'=>$row3['TestLevelName'],
                                                            'Description'=>$row3['Description']
                                                        );
                                                    }
                                                }
                                                $testgroups[] = array(
                                                    'TestGroupId'=>$row2['TestGroupId'],
                                                    'TestCategoryId'=>$row2['TestCategoryId'],
                                                    'TestGroupName'=>$row2['TestGroupName'],
                                                    'Description'=>$row2['Description'],
                                                    'TestLevels'=>$testlevels
                                                );
                                            }

                                            
                                        }



                                    $testcategories[]=array(
                                        'TestCategoryId' =>$row['TestCategoryId'],
                                        'CategoryName' => $row['CategoryName'],
                                        'Description' => $row['Description'],
                                        'TestGroups'=>$testgroups
                                    );     
                                
                                }

                                return $testcategories;
            }    
                } catch (Exception $ex) {
                    var_dump($ex);
                    return array('resp_msg'=>'There was an error while fetching the records');
                }
    

    }
    public function insertOne(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $insertedRId  = 0;
        $query = "INSERT INTO `vs_student_scoring_sheet`
        ( `OOSG_CODE`, `TestLeveId`, `Passed`, `Description`, `EnteredAt`, `CreatedBy`)
        VALUES (?,?,?,?,?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->TestLevelId);
            $stmt->bindParam(3, $this->Passed);
            $stmt->bindParam(4, $this->Description);
            $stmt->bindParam(5, $this->EnteredAt);
            $stmt->bindValue(6, $common->get_user_id_token($this->conn, $this->AccessToken));
            $stmt->execute();
            $insertedRId = $this->conn->lastInsertId();
            $response = array('resp_code'=>1, 'resp_msg'=>$this->RecordsInserted.' Record Inserted');


        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'Record could not be inserted');


        }
        return $response;
    }
    
    function StudentProgress($OOSG_CODE){
    $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
         
            $query = "SELECT * FROM `vw_student_scoring_sheet` ";
                    $stmt2 = $this->conn->prepare($query);
                    $stmt2->execute();
                    $count2 = $stmt2->rowCount();
                        if($count2>0){
                            $attendance = array();
                            while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                $attendance[]=array(
                                    
                                    'Id' =>$row2['scoring_sheet'],
                                    'GirlName' =>$row2['GirlName'],
                                    'OOSG_CODE' => $row2['OOSG_CODE'],
                                    'CenterName' => $row2['CenterName'],
                                    'County' => $row2['County'],
                                    'CohortTitle' => $row2['CohortTitle'],
                                    'CategoryName' => $row2['CategoryName'],
                                    'TestGroupName' => $row2['TestGroupName'],
                                    'TestLevelName' => $row2['TestLevelName'],
                                    'Passed' => $row2['Passed']
                
                                ); 
                            }                                   
                        }else{
                            http_response_code(404);
                            return array();
                        }            
            
                return $attendance;
            
            
        } catch (Exception $ex) {

            return array('resp_msg'=>'0 Record Found');
        }
    }
    function StudentProgressAll(){
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            // select all query
            try {
             
                $query = "SELECT * FROM `vw_student_scoring_sheet`";
                        $stmt2 = $this->conn->prepare($query);
                        $stmt2->bindParam(1, $OOSG_CODE);
                        $stmt2->execute();
                        $count2 = $stmt2->rowCount();
                            if($count2>0){
                                $attendance = array();
                                while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                                    $attendance[]=array(
                                        
                                        'Id' =>$row2['scoring_sheet'],
                                        'GirlName' =>$row2['GirlName'],
                                        'OOSG_CODE' => $row2['OOSG_CODE'],
                                        'CenterName' => $row2['CenterName'],
                                        'County' => $row2['County'],
                                        'CohortTitle' => $row2['CohortTitle'],
                                        'CategoryName' => $row2['CategoryName'],
                                        'TestGroupName' => $row2['TestGroupName'],
                                        'TestLevelName' => $row2['TestLevelName'],
                                        'Passed' => $row2['Passed']
                    
                                    ); 
                                }                                   
                            }else{
                                http_response_code(404);
                                return array();
                            }            
                
                    return $attendance;
                
                
            } catch (Exception $ex) {
    
                return array('resp_msg'=>'0 Record Found');
            }
        }

}


?>
