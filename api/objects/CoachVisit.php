<?php
include("../../modules/common/common.php");
class CoachVisit{
  
    // database connection and table name
    private $conn;
 
    // object properties

    public $CoachId;
    public $Notes;
    public $VisitDate;
    public $Longitude;
    public $Lattitude;
    public $AccessToken;
    public $image;
    public $NoteId;
  
   
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function listVisits(){
        $common = new Common();
    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        // select all query
        try {
            $sql = "SELECT `id`, `coach_id`, `notes`, `visit_date`, `longitude`, `lattitude`, `image`
             FROM `coach_notes` WHERE coach_id = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindValue(1,  $common->get_user_id_token($this->conn, $this->AccessToken));     
            $stmt->execute();
            $num = $stmt->rowCount();
            if($num>0){
                $notes=array();
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    $notes[]=array(
                        'coach_id' =>$row['coach_id'],
                        'notes' => $row['notes'],
                        'visit_date' => $row['visit_date'],
                        'lat' => $row['lattitude'],
                        'lng' => $row['longitude'],
                        'image'=>$row['image']
                        
                    );     
                                 
                }
                return $notes;
            }else{
                http_response_code(404);
               return [];
            }
            
        } catch (Exception $ex) {
            return [];        }
    

}

    public function addCoachNotes(){   
        $common = new Common();  
        $response = array();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "INSERT INTO `coach_notes`(`coach_id`, `notes`, `visit_date`, `longitude`, `lattitude`, `image`) 
        VALUES (?,?,?,?,?,?)";
        try {
    
            $stmt = $this->conn->prepare($query);
            $stmt->bindValue(1, $common->get_user_id_token($this->conn, $this->AccessToken));
            $stmt->bindParam(2, $this->Notes);
            $stmt->bindParam(3, $this->VisitDate);
            $stmt->bindParam(4, $this->Longitude);
            $stmt->bindParam(5, $this->Lattitude);
            $stmt->bindParam(6, $this->image);
            $stmt->execute();
            $insertedUserId = $this->conn->lastInsertId();
            
            $response = array('resp_code'=>1, 'resp_msg'=>'Note added');

        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'There was an error saving the image');

            echo $ex;
        }
        return $response;
    }
    public function addImage(){   
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "INSERT INTO `visit_images`(`note_id`, `image`) 
        VALUES (?,?)";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->NoteId);
            $stmt->bindParam(2, $this->image);

            $stmt->execute();
            $response = array('resp_code'=>1, 'resp_msg'=>'Note added');

        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'There was an error saving the image');
            echo $ex;
        }
        return $response;
    }


}
?>