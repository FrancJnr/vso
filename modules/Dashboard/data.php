<?php
include("../../common/common.php");
class DashboardData{
  
    // database connection and table name
    private $conn;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function queryWhere($query){
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            try {
                $stmt = $this->conn->prepare($query);
                $stmt->execute();
                $row = $stmt->fetch(PDO::FETCH_ASSOC);

                return $row;
                
            } catch (Exception $ex) {
                var_dump($ex);
            }

    }

    function queryAll($query){
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

            return $row;
            
        } catch (Exception $ex) {
            var_dump($ex);
        }

}
    
    
}
?>