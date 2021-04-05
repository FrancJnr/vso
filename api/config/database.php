<?php
class Database{
  
    // specify your own database credentials
    private $host = "localhost";
    private $db_name = "techsava_vso";
    private $username = "root";
    private $password = "";
    public $conn;
    public $validToken = false;
  
    // get the database connection
    public function getConnection(){
  
        $this->conn = null;
  
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
  
        return $this->conn;
    }
    public function validateToken($token){
        $query = "SELECT UserId FROM user WHERE access_token = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $token);
        // execute query
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if($row != null){
            return $this->validateToken = true;
        }
    }
}
?>
