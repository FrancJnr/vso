<?php
require_once "../vendor/koolreport/core/autoload.php";

//Specify some data processes that will be used to process
use \koolreport\processes\Group;
use \koolreport\processes\Sort;
use \koolreport\processes\Limit;

//Define the class
class Session extends \koolreport\KoolReport
{    
    use \koolreport\clients\Bootstrap;
    // use \koolreport\export\Exportable;

    public function settings()
    {
        return array(
            "dataSources"=>array(
                "techsava_vso"=>array(
                    "connectionString"=>"mysql:host=localhost;dbname=techsava_vso",
                    "username"=>"root",
                    "password"=>"",
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
        SELECT `SessionId`, `CenterId`, `StaffName`, `SessionDate`, `StartTime`, `CenterName`, 
        `EndTime`, `CenterLat`, `CenterLong`, `SessionActive`, `Description`, `CreatedBy`, 
        `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`
         FROM `vw_sessions`
         WHERE SessionActive = true;
        "
        )
        ->pipe($this->dataStore('activesessions'));
    }
}