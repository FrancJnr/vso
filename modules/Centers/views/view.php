<?php
$PageName="Centers";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../../Include.php");
include("../model/Centers.php");
include("../../config/database.php");
IsLoggedIn();
include("../../../Template/HTML.php");
?>    

<?php
include("../../../Template/Header.php");
?>

<?php
include("../../../Template/Sidebar.php");
?>

<?php
// Check if POST data is not empty
if (!empty($_POST)) {
	$database = new Database();
	$center = new Center($database->getConnection());
    $County = isset($_POST['County']) ? $_POST['County'] : '';
    $SubCounty = isset($_POST['SubCounty']) ? $_POST['SubCounty'] : '';
    $CenterName = isset($_POST['CenterName']) ? $_POST['CenterName'] : '';
    $Efid = isset($_POST['EF']) ? $_POST['EF'] : '';
    $Cohort = isset($_POST['cohort']) ? $_POST['cohort'] : '';


	$center->SubCountyId=$SubCounty;
	$center->CenterName=$CenterName;
	$center->Efid=$Efid;
    $center->Status=1;
    $center->CohortID=$Cohort;

    $insertedid = $center->insertOne();
    if($insertedid!=0){
          // Output message
    $msg = 'Created Successfully!';
    }else{
        $msg = '!! Ensure All Fields are filled';

    }
    
  
}
?>
<style>
.btn{
    width:100px;
    
}
</style>
    <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="View catch up center"; BreadCumb($BreadCumb); ?>
            
            <?php if ($msg): ?>
            <p><?=$msg?></p>
            <?php endif; ?>

			<?php
             $centerId = isset($_GET['CenterId']) ? $_GET['CenterId'] : '';
             $database = new Database();
             $center = new Center($database->getConnection());
             $center->CenterId=$_GET['CenterId'];
           
             $centers=$center->readOne();
			?>	
       	
                            <div class="row-fluid">				
                                <div class="span8">
                            <form class="well form-horizontal"  name="AddCenter" id="AddCenter" method="Post">
                                    <div class="form-row row-fluid">
                                            <div class="span12">
                                                    <div class="row-fluid">
                                                        <label class="form-label span4" for="County">County</label> 
                                                        <input class="span8" tabindex="2" id="County" type="text" name="County" value="<?php echo $centers['County']; ?> "/>   
                                                    </div> 
                                            </div>
                                    </div> 
                               
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                                <div class="row-fluid">
                                                    <label class="form-label span4" for="SubCounty">Sub County</label> 
                                                    <input class="span8" tabindex="2" id="SubCounty" type="text" name="SubCounty" value="<?php echo $centers['SubCounty']; ?> "/>
                                                </div> 
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="CenterName">Center Name</label>
                                                <input class="span8" tabindex="2" id="CenterName" type="text" name="CenterName" value="<?php echo $centers['CenterName']; ?> "/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="cohort">Cohort</label> 
                                            <input class="span8" tabindex="2" id="Cohort" type="text" name="Cohort" value="<?php echo $centers['CohortID']; ?> "/>

                                            </div>
                                        </div> 
									</div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="EF">Educator Facilitator </label> 
                                            <input class="span8" tabindex="2" id="Cohort" type="text" name="EF" value="<?php echo $centers['StaffName']; ?> "/>
 
                                            </div>
                                        </div> 
									</div>
                                    <div>
                                    <center>
                                    <a  href="Centers" class="btn btn-primary">Back</a>

                                    </center>

                                    </div>

					               
                              </form>
                    
                        </div>
                
		<script type="text/javascript">
	
<?php
include("Template/Footer.php");
?>