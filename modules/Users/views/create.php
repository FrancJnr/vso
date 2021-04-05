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
// Check if POST data is not empty
if (!empty($_POST)) {
	$database = new Database();
	$staff = new Staff($database->getConnection());
    // Check if POST variable "name" exists, if not default the value to blank, basically the same for all variables
 
    $insertedid=$staff->insertOne($_POST, "vs_staff");
    if($insertedid!=0){
          // Output message
    $msg = '<div class="alert alert-success" role="alert">
                Staff added Sucessfully
            </div>';
    }else{
        $msg = '<div class="alert alert-danger" role="alert">
        Failed to add staff
    </div>';
    }
    
  
}
?>
    <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="Add Staff"; BreadCumb($BreadCumb); ?>
            
            <?php if ($msg): ?>
            <p><?=$msg?></p>
            <?php endif; ?>

       	
                            <div class="row-fluid">				
                                <div class="span8">
                            <form class="form-horizontal"  name="AddCenter" id="AddStaff" method="Post">
                                     <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="name">Name:</label>
                                                <input class="span8" tabindex="1" id="name" type="text" name="name" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="DOB">DOB</label>
													<input class="span8" tabindex="2"  id="dob" type="text" name="dob" />
												</div>
											</div>
										</div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="position">Position:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="3" class="nostyle" name="position" id="position" style="width:100%;">
                                                    <option></option>
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
                                            <label id="county_label" class="form-label span4" for="County">County:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="4" class="nostyle" name="county_id" id="county_id" style="width:100%;">
                                                    <option></option>
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
                                            <label id="center_label" class="form-label span4" for="center_id">Catch up Center:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="5" class="nostyle" name="center_id" id="center_id" style="width:100%;">
                                                    <option></option>
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
                                                <input class="span8" tabindex="6" id="name" type="text" name="phone_number" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="email">Email:</label>
                                                <input class="span8" tabindex="7" id="email" type="text" name="email" />
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
									<?php $ButtonContent="Save"; ActionButton($ButtonContent,7,"Submit"); ?>

					               
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
$("#position").change(function() {
  if ($(this).val() == 1) {   
    $('#center_label').hide();
    $('#center_id').hide();
    $('#center_id').removeAttr('required', '');
    $('#center_id').removeAttr('data-error', 'This field is required.');
  } else {
    $('#county_label').hide();
    $('#county_id').hide();
    $('#county_id').removeAttr('required');
    $('#county_id').removeAttr('data-error');

    $('#center_label').show();
    $('#center_id').show();
    $('#center_id').addAttr('required', '');
    $('#center_id').addAttr('data-error', 'This field is required.');
  }
});
                
	});
</script>
<?php
include("Template/Footer.php");
?>