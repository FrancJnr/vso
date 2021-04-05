<?php
$PageName="DetailView";
$FormRequired=1;
$TableRequired=1;
$TooltipRequired=1;
$SearchRequired=1;
$MonthPicker=1;
include("../../../Include.php");
include("../model/Cohorts.php");
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
			<?php $BreadCumb="Cohort"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			$db = new Database();
			$cohort = new Cohorts($db->getConnection());
			$CohortId=isset($_GET['CohortId']) ? $_GET['CohortId'] : '';
			$cohort->CohortId = $CohortId;
			$row = $cohort->readOne();
			
			?>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span><?php echo $row['CohortTitle'];  ?></span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content" style="padding-bottom:0;">
											<div class="row-fluid">
													<div class="span12">
														<div class="box chart gradient">
															<div class="title">
															</div>
															<div class="content" style="width:98%; margin-bottom:10px; float:left; clear:both; ">
																<form class="form-horizontal"  name="Cohorts" id="Cohorts" method="Post">
																<div class="row-fluid">
																	<div class="span12">
																		<div class="form-row row-fluid">
																			<div class="span8">
																				<div class="row-fluid">
																					<label class="form-label span2 mandatory" for="CohortName">Cohort Name</label>
																					<input class="span10" tabindex="1" id="CohortName" type="text" style="width:60%; name="CohortName" value="<?php echo $row['CohortTitle']; ?>" />
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="row-fluid">
																	<div class="span4">
																		<div class="form-row row-fluid">
																			<div class="span12">
																				<div class="row-fluid">
																					<label class="form-label span4" for="StartDate">Start Date</label>
																					<input class="span8" tabindex="7" id="StartDate" type="text" name="StartDate" value="<?php echo $row['StartDate']; ?>" />
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="span4">
																		<div class="form-row row-fluid">
																			<div class="span12">
																				<div class="row-fluid">
																				<label class="form-label span4" for="EndDate">End Date</label>
																					<input class="span8" tabindex="8" id="EndDate" type="text" name="EndDate" value="<?php echo $row['EndDate']; ?>" />
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="span4">
																		<div class="form-row row-fluid">
																			<div class="span12">
																				<div class="row-fluid">
																					<label class="form-label span4" for="Status">Status</label>
																					<select tabindex="1" name="Status" id="Status" class="nostyle" style="width:60%;" >
																						<option></option>
																						<option value="1">Active</option>
																						<option value="0">In Active</option>
																						</select>
															
																				</div>
																			</div>
																		</div>
																	
																		
																	</div>
																	<div class="span12">
																		<div class="form-row row-fluid">
																			<div class="span12">
																				<div class="row-fluid">
																					<textarea rows="4" placeholder = "Add any details related to the Cohort" style="width:90%" class="span12" tabindex="14" id="Description" type="text" name="Description"><?php echo $row['Description']; ?></textarea> 
																				</div>
																			</div>
																		</div>
														
																		<?php $ButtonContent="Update"; ActionButton($ButtonContent,20, "Submit"); ?>
																	</div>
																</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					</div>
				</div>
			
					
				
					
        
		
<script type="text/javascript">
	$(document).ready(function() {

		$('#sessionTable').dataTable({
		"sPaginationType": "two_button",
		"bJQueryUI": false,
		"bAutoWidth": false,
		"bLengthChange": false,  
		"bProcessing": true,
		"bDeferRender": true,
		"sAjaxSource": "plugins/Data/data9.txt",
		"fnInitComplete": function(oSettings, json) {
		  $('.dataTables_filter>label>input').attr('id', 'search');
		$('#myModal').modal({ show: false});
		$('#myModal').on('hidden', function () {
			console.log('modal is closed');
		})
		$("a[data-toggle=modal]").click(function (e) {
		lv_target = $(this).attr('data-target');
		lv_url = $(this).attr('href');
		$(lv_target).load(lv_url);
		});	
		}
	});
	


		if($('#StartDate').length) {
		$('#StartDate').datepicker({ yearRange: "-180:+0", dateFormat: 'dd-mm-yy',changeMonth: true, changeYear: true });
		}
		if($('#EndDate').length) {
		$('#EndDate').datepicker({ yearRange: "-180:+0", dateFormat: 'dd-mm-yy',changeMonth: true, changeYear: true });
		}
		$("#Status").select2();
		$('#Status').select2({placeholder: "Select"});
		$("input, textarea, select").not('.nostyle').uniform();
		$("#GeneralSetting").validate({
			rules: {
				StartDate: {
					required: true,
				},
				EndDate: {
					required: true,
				},
				CohortName: {
					required: true,
				}
			},
			messages: {
				StartDate: {
					required: "Please select this!!",
				},
				EndDate: {
					required: "Please enter this!!",
				},
				CohortName: {
					required: "Please enter this!!",
				}
			}   
		});
	});
</script>
<?php
include("Template/Footer.php");
?>