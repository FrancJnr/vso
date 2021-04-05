<?php
class Content{
  
    // database connection and table name
    private $conn;  
    // object properties
    public $id;
    public $class;
    public $filename;
    public $filesize;
    public $fileurl;
    public $filetype;
    public $session;
    public $description;
    public $uploadedon;
  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    function read(){
        // select all query
        $query = "SELECT id, category, file_name, file_size, file_url, file_type, session, description, uploaded_on
        FROM e_learning_media";
       
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->class);
       
        // execute query
        $stmt->execute();
        
        return $stmt;
    }
}
?>