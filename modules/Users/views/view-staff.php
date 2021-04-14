<?php
$PageName="Centers";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../../Include.php");
include("../model/Staff.php");
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
	$staff = new Staff($database->getConnection());
	$StaffId = isset($_GET['StaffId']) ? $_GET['StaffId'] : '';
	$staff = $staff->readOne("vw_staffs", "id", $StaffId);
?>
    <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="View Staff"; BreadCumb($BreadCumb); ?>
            
            <?php if ($msg): ?>
            <p><?=$msg?></p>
            <?php endif; ?>

       	
                            <div class="row-fluid">				
                                <div class="span8">
                            <form class="form-horizontal"  name="modules/Users/views/view-staff.php" id="ViewStaff" method="Post">
                                     <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="name">Name:</label>
                                                <input class="span8" tabindex="1" id="name" type="text" name="name" value="<?php echo $staff["staffName"]; ?>"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="DOB">DOB</label>
													<input class="span8" tabindex="2"  id="dob" type="text" name="dob" value="<?php echo $staff["Dob"]; ?>"/>
												</div>
											</div>
										</div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="position">Position:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="3" class="nostyle" name="position" id="position" style="width:100%;" value="<?php echo $staff["Username"]; ?>">
                                                    <option><?php echo $staff["Position"]; ?></option>
													<?php 
															$query="select id,name
															 from staffPositions WHERE active = true";
																$check=mysqli_query($CONNECTION,$query);
																$count=mysqli_num_rows($check);
																while($row=mysqli_fetch_array($check))
																	{
																		echo "<option value='".$row['id']."'>".$row['name']."</option>";
																		
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
                                            <label class="form-label span4" for="County">County:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="4" class="nostyle" name="county_id" id="county_id" style="width:100%;">
                                                    <option><?php echo $staff["county_name"]; ?></option>
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
                                            <label class="form-label span4" for="center_id">Catch up Center:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="5" class="nostyle" name="center_id" id="center_id" style="width:100%;">
                                                    <option><?php echo $staff["CenterName"]; ?></option>
													<?php 
															$query="select CenterId,CenterName
															 from vw_centers";
																$check=mysqli_query($CONNECTION,$query);
																$count=mysqli_num_rows($check);
																while($row=mysqli_fetch_array($check))
																	{
																		echo "<option value='".$row['CenterId']."'>".$row['CenterName']."</option>";
																		
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
                                                <label class="form-label span4" for="phone_number">Phone No:</label>
                                                <input class="span8" tabindex="6" id="name" type="text" name="phone_number" value="<?php echo $staff["phone_number"]; ?>" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="email">Email:</label>
                                                <input class="span8" tabindex="7" id="email" type="text" name="email" value="<?php echo $staff["email"]; ?>" />
                                            </div>
                                        </div>
                                    </div>
                                    
                                    

					               
                              </form>
                    
                        </div>
          

				
					</div>
                </div>
            </div>
        </div>
		<script type="text/javascript">
	$(document).ready(function() {
        if($('#dob').length) {
		$('#dob').datepicker({ yearRange: "-180:+0", dateFormat: 'yy-mm-dd',changeMonth: true, changeYear: true });
		}
		$('#centers').dataTable({
			"sPaginationType": "two_button",
			"bJQueryUI": false,
			"bAutoWidth": false,
			"bLengthChange": false,  
			"bProcessing": true,
			"bDeferRender": true,
			"fnInitComplete": function(oSettings, json) {
			  $('.dataTables_filter>label>input').attr('id', 'search');
			}
		});

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