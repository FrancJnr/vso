<?php
class Common{
    public function decodeBoolean($boolValue){
        if($boolValue == 1){
            return "yes";
        }else{
            return "No";
        }
    }
    public function generateGridData($fileName, $dataArray){
        $DATA=array();
        $DATA['aaData']=$dataArray;
        $directory = "../../../plugins/Data/$fileName";
        $fp = fopen($directory, 'w') or die("File does not exist!");
        fwrite($fp, json_encode($DATA));
        fclose($fp); 
    }
    public function displayCheckBox($fieldName,  $id){
        return "<input tabindex=\"3\" class=\"span8 chcktbl\"  data-id=\"$id\" type=\"checkbox\" name=\"$fieldName\" />";
        

    }
    public function decodeGender($numValue){
        if($numValue == 7){
            return "Male";
        }else{
            return "Female";
        }
    }
    public function get_user_id($conn, $userName){
        $userId="";
        $sql = "SELECT UserId FROM user WHERE Username = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(1, $userName);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $userId = $row['UserId'];
        }
        
        return $userId;
    }
    public function get_user_id_token($conn, $access_token){
        $userId="";
        $sql = "SELECT UserId FROM user WHERE access_token = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(1, $access_token);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $userId = $row['UserId'];
        }
        
        return $userId;
    }
    public function get_user_type($conn, $access_token){
        $UserType="";
        $sql = "SELECT UserType FROM user WHERE access_token = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(1, $access_token);
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $UserType = $row['UserType'];
        }
        
        return $UserType;
    }
}
