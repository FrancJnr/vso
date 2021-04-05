<?php
$PageName="Centers";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../../Include.php");
include("../model/StudentProgress.php");
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

<div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="Progress Report"; BreadCumb($BreadCumb); ?>
            
				<?php DisplayNotification();?>

			<?php
			 $OOSG_CODE = isset($_GET['OOSG_CODE'])? $_GET['OOSG_CODE']:'';
             $database = new Database();
			 $StudentProgress = new StudentProgress($database->getConnection());
			 $StudentProgress->OOSG_CODE = $OOSG_CODE;
			 $studentprogress=$StudentProgress->readOne();
			 $attendancestats=$StudentProgress->SessionAttendanceStats();
			 $tests = $StudentProgress->StudentProgress()
			?>
						    <div class="span6">
								<div class="box gradient">
									<div class="title">
											<h4>
											<span>Details</span>
										</h4>
										<a href="#" class="minimize">Minimize</a>
									</div>
									<div class="content clearfix">	   							
									     <form class="form-horizontal"  name="admit" id="admit" method="Post">
											<div class="row-fluid">
												<div class="span12">
													<div class="form-row row-fluid">
														<div class="span12">
															<div class="row-fluid">
																<label class="form-label span4 mandatory" for="GirlName">OOSG_CODE:</label>
																<input class="span8" tabindex="2"  readonly id="GirlName" type="text" name="GirlName" value="<?php echo $studentprogress["OOSG_CODE"]; ?>" />
															</div>
														</div>
													</div>

													<div class="form-row row-fluid">
														<div class="span12">
															<div class="row-fluid">
																<label class="form-label span4" for="GirlName">Girl Name:</label>
																<input class="span8" readonly tabindex="7" id="GirlName" type="text" name="GirlName" value="<?php echo $studentprogress["GirlName"]; ?>" />
															</div>
														</div>
													</div>
													<div class="form-row row-fluid">
														<div class="span12">
															<div class="row-fluid">
																<label class="form-label span4" for="CenterName">Catch Up Center:</label>
																<input class="span8" readonly tabindex="7" id="CenterName" type="text" name="CenterName" value="<?php echo $studentprogress["CenterName"]; ?>" />
															</div>
														</div>
													</div>
													<div class="form-row row-fluid">
														<div class="span12">
															<div class="row-fluid">
																<label class="form-label span4" for="age">Age:</label>
																<input class="span8" readonly tabindex="7" id="age" type="text" name="age" value="<?php echo $studentprogress["age"]; ?>" />
															</div>
														</div>
													</div>
												</div>
											
												
											</div>
									    </form>	
									</div>
								</div>	
							</div>
							<div class="span8">
								<div class="box gradient">
									<div class="title">
											<h4>
											<span>Attendance Record</span>
										</h4>
										<a href="#" class="minimize">Minimize</a>
									</div>
									<div class="content clearfix">
									<table id="attendanceTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" height="10%" width="40%">
										<thead>
											<tr>
												<td>Session</td>
												<td>Date</td>
												<td>Contact Hours</td>
												<td>EF Comments</td>
															
											</tr>
										</thead>
										<tbody>
										<?php foreach ($attendancestats as $attendance): ?>
											<tr>
												<td><?=$attendance['SessionId']?></td>
												<td><?=$attendance['AttendanceDate']?></td>
												<td><?=$attendance['contact_hours']?></td>
												<td><?=$attendance['Comments']?></td>
												
												</td>
											</tr>
											<?php endforeach; ?>
										</tbody>
									</table>		   							
								
									</div>
								</div>	
							</div>
							<div class="span8">
								<div class="box gradient">
									<div class="title">
											<h4>
											<span>GIRL'S COMPETENCES IN ENGLISH, KISWAHILI AND NUMERACY</span>
										</h4>
										<a href="#" class="minimize">Minimize</a>
									</div>
									<div class="content clearfix">
									<table id="progressTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="30%">
										<thead>
											<tr>
												<td>Category</td>
												<td>Test</td>
												<td>Level</td>	
												<td>Date Tested</td>					
											</tr>
										</thead>
										<tbody>
										<?php foreach ($tests as $progress): ?>
											<tr>
												<td><?=$progress['CategoryName']?></td>
												<td><?=$progress['TestGroupName']?></td>
												<td><?=$progress['Description']?></td>	
												<td><?=$progress['date_entered']?></td>												
											
												</td>
											</tr>
											<?php endforeach; ?>
										</tbody>
									</table>		   							
								
									</div>
								</div>	
							</div>
		
        <script type="text/javascript">
	$(document).ready(function() {
	
		$('#attendanceTable').dataTable({
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

		$('#progressTable').dataTable({
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
	
		$("#StaffPosition").select2();
		if($('#StaffDOJ').length) {
		$('#StaffDOJ').datepicker({ yearRange: "-100:+0", dateFormat: 'dd-mm-yy',changeMonth: true, changeYear: true });
		}
		$("input, textarea, select").not('.nostyle').uniform();
		$('#StaffPosition').select2({placeholder: "Select"});
		$("#ManageStaff").validate({
			ignore: 'input[type="hidden"]',
			rules: {
				StaffPosition: {
					required: true,
				},
				StaffName: {
					required: true,
				},
				StaffMobile: {
					required: true,
					//remote: "RemoteValidation?Action=MobileValidation&Id=StaffMobile",
				},
				StaffDOJ: {
					required: true,
				}
			},
			messages: {
				StaffPosition: {
					required: "Please select this!!",
				},
				StaffName: {
					required: "Please enter this!!",
				},
				StaffMobile: {
					required: "Please enter this!!",
					//remote: jQuery.format("<?php echo $MOBILENUMBERDIGIT; ?> Digit Mobile number!!")
				},
				StaffDOJ: {
					required: "Please enter this!!",
				}
			}   
		});  
		$(function() {
			var baseURL = 'StaffAjaxTab';
			$('#StaffProfile').load(baseURL+'?Action=StaffProfile&Id=<?php echo $GetStaffId; ?>', function() {
				$('#myTabs').tab();
			});    
			$('#myTabs').bind('show', function(e) {    
			   var pattern=/#.+/gi
			   var contentID = e.target.toString().match(pattern)[0];
				$(contentID).load(baseURL+contentID.replace('#','?Id=<?php echo $GetStaffId; ?>&Action='), function(){
					$('#myTabs').tab();
				});
			});
		});
                
                //delete
                
                $('.deletestaff').live("click",function(e)
		{
                    e.preventDefault();
			if (confirm("Are you sure you want to delete?"))
			{
				var id = $(this).attr('id');
			
				$.ajax(
				{
				   type: "POST",
				   url: "DeleteStaff.php",
				   data: { StaffId: id},
				   cache: false,

				   success: function()
				   {
						window.location.reload();
				   },
				   error: function(data)
				   {
                                       alert(data);
				   }
				 });                
			}
		});
                
	});
</script>
<?php
include("Template/Footer.php");
?>