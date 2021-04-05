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
  $database = new Database();
  $center = new Center($database->getConnection());

$msg = '';
if (isset($_GET['CenterId'])) {
    if (!empty($_POST)) {
        $id = isset($_POST['CenterId']) ? $_POST['CenterId'] : NULL;
        $County = isset($_POST['County']) ? $_POST['County'] : 'Please select a county';
        $SubCounty = isset($_POST['SubCounty']) ? $_POST['SubCounty'] : 'Please select a subcounty';
        $CenterName = isset($_POST['CenterName']) ? $_POST['CenterName'] : 'Please add Center name';
        $EF = isset($_POST['EF']) ? $_POST['EF'] : 'Please Select an Ef for the center';
        $center->CenterId = isset($_GET['CenterId'])? $_GET['CenterId'] : NULL;
        $center->insertOne();
        $msg = 'Updated Successfully!';

    }else{
        $center->CenterId = isset($_GET['CenterId'])? $_GET['CenterId'] : NULL;
		$Currentcenter=$center->readOne();
		 
    }
    
} else {
    exit('No ID specified!');
}
?>
<style>
.btn{
    width:100px;
    
}
</style>
    <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="Update catch up center"; BreadCumb($BreadCumb); ?>
            
            <?php if ($msg): ?>
            <p><?=$msg?></p>
            <?php endif; ?>

			<?php
             $database = new Database();
             $center = new Center($database->getConnection());
             $centers=$center->readAll();
			?>	
       	
                            <div class="row-fluid">				
                                <div class="span8">
                            <form class="well form-horizontal"  name="AddCenter" id="AddCenter" method="Post">
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="County">County</label> 
                                            <div class="span8 controls sel">
                                               
                                                    <select tabindex="303" class="nostyle" name="County" id="County" style="width:100%;">
													<option><?php echo($Currentcenter['County'])?></option>
													<?php 
															$query="select id,county_name
															 from counties";
																$check=mysqli_query($CONNECTION,$query);
																$count=mysqli_num_rows($check);
																while($row=mysqli_fetch_array($check))
																	{
																		echo "<option value='".$row['id']."'>".$row['county_name']."</option>";
																		
																	}
										
                                                        ?>
                                                    </select>
                                                </div> 
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="SubCounty">Sub County</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="303" class="nostyle" name="SubCounty" id="SubCounty" style="width:100%;">
													<option><?php echo($Currentcenter['SubCounty'])?></option>

                                                    </select>
                                                </div> 
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="CenterName">Center Name</label>
                                                <input class="span8" tabindex="2" id="CenterName" type="text" name="CenterName"  value="<?php echo $Currentcenter['CenterName']; ?> "/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="cohort">Cohort</label> 
                                                <div class="span8 controls sel">   
                                                <select tabindex="303" class="nostyle" name="cohort" id="cohort" style="width:100%;">
												<option><?php echo($Currentcenter['CohortID'])?></option>
                                                <?php echo ListCohorts() ?>
                                                </select>
                                                </div> 
                                            </div>
                                        </div> 
									</div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="EF">Educator Facilitator </label> 
                                                <div class="span8 controls sel">   
                                                <select tabindex="303" class="nostyle" name="EF" id="EF" style="width:100%;">
												<option><?php echo($Currentcenter['StaffName'])?></option>
                                                <?php echo ListEFs() ?>
                                                </select>
                                                </div> 
                                            </div>
                                        </div> 
									</div>
                                    <div>
                                    <center>
                                    <button class="btn btn-success">Save</button>
                                    <a  href="Centers" class="btn btn-primary">Back</a>

                                    </center>

                                    </div>

					               
                              </form>
                    
                        </div>
                
		<script type="text/javascript">
	$(document).ready(function() {

$( "select[name='County']" ).change(function () {
    var CountyId = $(this).val();
    if(CountyId) {
		$url = "ajaxCall/";
        $.ajax({
            url: $url,
            dataType: 'Json',
            data: {'id':CountyId},
            success: function(data) {
                $('select[name="SubCounty"]').empty();
                $.each(data, function(key, value) {
                    $('select[name="SubCounty"]').append('<option value="'+ key +'">'+ value +'</option>');

                });

            }

        });


    }else{

        $('select[name="SubCounty"]').empty();

    }

});
                
	});
</script>
<?php
include("Template/Footer.php");
?>