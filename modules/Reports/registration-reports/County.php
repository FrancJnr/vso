<?php
require_once "../vendor/koolreport/core/autoload.php";

//Specify some data processes that will be used to process
use \koolreport\processes\Group;
use \koolreport\processes\Sort;
use \koolreport\processes\Limit;

//Define the class
class County extends \koolreport\KoolReport
{    
    public function settings()
    {
        return array(
            "dataSources"=>array(
                "techsava_vso"=>array(
                    "connectionString"=>"mysql:host=localhost;dbname=techsava_vso",
                    "username"=>"techsava_pmes",
                    "password"=>"trymenot#123",
                    "charset"=>"utf8"
                )

            )
        );
    } 
  
    protected function setup()
    {
        //Select the data source then pipe data through various process
        //until it reach the end which is the dataStore named "sales_by_customer".
        $this->src('techsava_vso')
        ->query("
            SELECT County, count(RegistrationId) AS students
            FROM vw_registrations
            GROUP BY County;
        "
        )
        ->pipe($this->dataStore('result'));
    }
}