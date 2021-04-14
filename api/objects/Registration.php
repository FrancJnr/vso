<?php
include("../../modules/common/common.php");
class Registration{
  
    // database connection and table name
    private $conn;
 
    // object properties
    public $RegistrationId;      
    public $OOSG_CODE;           
    public $CohortId;            
    public $Efid;                
    public $CenterId ;           
    public $GirlName;            
    public $Village;             
    public $Ward;                
    public $Surname;            
    public $FirstName;           
    public $OtherNames ;         
    public $LanguageSpoken;     
    public $HouseHeadName;      
    public $HouseHeadSex;       
    public $HouseHeadSpouseName;
    public $Dob;                
    public $Gender;            
    public $GuardianContact;   
    public $GuardianOcupation;  
    public $IsAdmitted ;         
    public $IsDeleted;           
    public $DeletedBy;           
    public $CreatedBy;           
    public $CreatedAt;           
    public $UpdatedAt;
    public $UserType;  
    public $AccessToken;
    public $RecordsInserted;
    public $email;
    public $Disability;
       

    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
       
    }
    function readAll(){
            $common = new Common();
            $this->Efid = $common->get_user_id_token($this->conn, $this->AccessToken);
            $this->UserType = $common->get_user_type($this->conn, $this->AccessToken);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            $sql = "";
            $stmt = null;
            try {
                
                if($this->UserType == 2){
                    $sql = "SELECT * FROM `vw_registrations`
                    WHERE Efid = ?  AND status is null";
                    $stmt = $this->conn->prepare($sql);
                    $stmt->bindParam(1, $this->Efid);
                    $stmt->execute();
                    
                }else if($this->UserType == 1){
                    $sql = "SELECT * FROM `vw_registrations` 
                     WHERE status is null";
                    $stmt = $this->conn->prepare($sql);
                    $stmt->execute();
                }else{
                    var_dump("Access for this user type is denied");
                }           

                $num = $stmt->rowCount();
                if($num>0){
                    $Registration=array();
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                        extract($row);                
                            $Registration[]=array(
                                'RegistrationId'=>$row['RegistrationId'],    
                                'OOSG_CODE'=>$row['OOSG_CODE'],          
                                'CohortId'=>$row['CohortTitle'],  
                                'Efid'=>$row['CreatedByUser'],               
                                'CenterId'=>$row['CenterName'],  
                                'Disability'=>$row['Disability'],       
                                'GirlName'=>str_replace('\'', '', $row['GirlName']),
                                'Email'=>$row['email'],            
                                'Village'=>$row['Village'],            
                                'Ward'=>$row['Ward'],                     
                                'LanguageSpoken'=>$row['LanguageSpoken'],     
                                'HouseHeadName'=>$row['HouseHeadName'],      
                                'HouseHeadSex'=>$row['HouseHeadSex'],       
                                'HouseHeadSpouseName'=>$row['HouseHeadSpouseName'],
                                'Dob'=>$row['Dob'],                
                                'Gender'=>$row['Gender'],            
                                'GuardianContact'=>$row['GuardianContact'],   
                                'GuardianOcupation'=>$row['GuardianOcupation'], 
                                'IsAdmitted'=>$row['IsAdmitted'],        
                                'IsDeleted'=>$row['IsDeleted'],          
                                'DeletedBy'=>$row['DeletedBy'],          
                                'CreatedBy'=>$row['CreatedByUser'],          
                                'CreatedAt'=>$row['CreatedAt'],          
                                'UpdatedAt'=>$row['UpdatedAt']
                                
                            
                            );                           
                    }
                    return $Registration;
                }else{
                    http_response_code(404);
                   return array();
                }
                
            } catch (Exception $ex) {
              
                return array(array('resp_msg'=>'There was an error while fetching the records'));
            }
        
    }
    public function insertOne(){
       
        $common = new Common();
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->Efid = $common->get_user_id_token($this->conn, $this->AccessToken);
        $insertedRId  = 0;
        $response = "";
        $query = "INSERT INTO `vs_registrations`
         (`OOSG_CODE`,`CohortId`,`Efid`,`CenterId`,`GirlName`,`Village`,`Ward`,`LanguageSpoken`,`HouseHeadName`,`HouseHeadSex`,
        `HouseHeadSpouseName`,`Dob`,`Gender`,`GuardianContact`,`GuardianOcupation`,`IsDeleted`,`DeletedBy`,
        `CreatedBy`,`CreatedAt`, email, Disability)
        VALUES(?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?, ?, ?)";
       
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(1, $this->OOSG_CODE);
            $stmt->bindParam(2, $this->CohortId);
            $stmt->bindParam(3, $this->Efid);
            $stmt->bindParam(4, $this->CenterId);
            $stmt->bindParam(5, $this->GirlName);
            $stmt->bindParam(6, $this->Village);
            $stmt->bindParam(7, $this->Ward);
            $stmt->bindParam(8, $this->LanguageSpoken);
            $stmt->bindParam(9, $this->HouseHeadName);
            $stmt->bindParam(10, $this->HouseHeadSex);
            $stmt->bindParam(11, $this->HouseHeadSpouseName);
            $stmt->bindParam(12, $this->Dob);
            $stmt->bindParam(13, $this->Gender);
            $stmt->bindParam(14, $this->GuardianContact);
            $stmt->bindParam(15, $this->GuardianOcupation);
            $stmt->bindParam(16, $this->IsDeleted);
            $stmt->bindParam(17, $this->Efid);
            $stmt->bindParam(18, $this->Efid);
            $stmt->bindParam(19, $this->CreatedAt); 
            $stmt->bindParam(20, $this->email); 
            $stmt->bindParam(21, $this->Disability);          
            $stmt->execute();

            $insertedRId = $this->conn->lastInsertId();
            $response = array('resp_code'=>1, 'resp_msg'=>$this->RecordsInserted.' Record Inserted');
        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'OOSG CODE Already Exists');
            echo($ex);
        
        }
        return $response;
    }
    public function updateRegistration(){
        $updated = false;
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $query = "UPDATE vs_registrations SET 
        OOSG_CODE = '''.$this->OOSG_CODE.''',
        Surname = '''.$this->Surname.''',
        FirstName = '''.$this->FirstName.''',
        OtherNames = '''.$this->OtherNames.''',
        Dob = '''.$this->Dob.''',
        Gender = '''.$this->Gender.''',
        Nationality = '''.$this->Nationality.''',
        County = '''.$this->County.''',
        Email = '''.$this->Email.''',
        Mobile = '''.$this->Mobile.''',
        GuardianName = '''.$this->GuardianName.''',
        GuardianMobile = '''.$this->GuardianMobile.''',
        HighestEducationLevel = '''.$this->HighestEducationLevel.''',
        CenterName = '''.$this->CenterName.''',
        CenterName = '''.$this->CenterName.'''
        WHERE RegistrationId = '''$this->RegistrationId.'''";
        try {        
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $updated = true;
            if($updated=true){
                $response = array('resp_code'=>1, 'resp_msg'=>'Record Updated','query'=>$stmt);
            }else{
                $response = array('resp_code'=>1, 'resp_msg'=>'Record Update Failed');
            }
        } catch (Exception $ex) {
            $response = array('resp_code'=>0, 'resp_msg'=>'Operation Failed ', 'error'=>$query, 'trace'=>$ex);
        }
        return $response;
    }
}
?>