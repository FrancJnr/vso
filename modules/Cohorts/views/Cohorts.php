<?php
$PageName="Cohorts";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
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
			<?php $BreadCumb="Cohorts"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			 $db = new Database();
			 $cohort = new Cohorts($db->getConnection());
             $cohorts = $cohort->readAll();
			 if(isset($_POST['Submit'])){
			 $CohortTitle=isset($_POST['CohortTitle']) ? $_POST['CohortTitle'] : '';
			 $StartDate=isset($_POST['StartDate']) ? $_POST['StartDate'] : '';
			 $EndDate=isset($_POST['EndDate']) ? $_POST['EndDate'] : '';

			 $IsActive=isset($_POST['IsActive']) ? $_POST['IsActive'] : 0;
			 $Description=isset($_POST['Description']) ? $_POST['Description'] : '';
	
			 if($CohortTitle==null || $StartDate==null || $EndDate ==null ){
			 	echo "Ensure all required fields are populated";
			 }else{
			 
			 	$cohort->CohortTitle = $CohortTitle;
			 	$cohort->StartDate = $StartDate;
			 	$cohort->EndDate = $EndDate;
			 	$cohort->IsActive = $IsActive;
			 	$cohort->Description = $Description;
			 
			 	$cohort->insertOne();

			 }
			}
			 $cohort->readAll();
			                                      
            echo $_POST['RegistrationId'];                       
			 ?>	
					
                <div class="row-fluid">
                    <div class="span4">
						<form class="form-horizontal" action="ActionDelete" name="DeleteStudentRegistration" id="DeleteStudentRegistration" method="Post">
							<div id="DeleteStudentRegistration"></div>
						</form>
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span>Create Cohort</span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content" style="padding:5px;">
								<form class="form-horizontal"  name="cohort" id="cohort" method="Post">
							
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="CohortTitle">Cohort Name</label>
												<input class="span8" tabindex="1" id="CohortTitle" type="text" name="CohortTitle" value="" />
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="StartDate">Starts On</label>
												<input class="span8" readonly tabindex="11" id="StartDate" type="text" name="StartDate" value="" />
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="EndDate">Ends On</label>
												<input class="span8" readonly tabindex="11" id="EndDate" type="text" name="EndDate" value="" />
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="IsActive">Active</label>
												<input class="span8" tabindex="2" id="IsActive" type="checkbox" name="IsActive" value="" />
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="Description">Description</label>
												<textarea  class="span8" tabindex="2" id="Description" rows="4" name="Description" value=""/>
												</textarea>
											</div>
										</div>
									</div>
									                                                   
										<?php $ButtonContent="Save"; ActionButton($ButtonContent,7,"Submit"); ?>
								</form>
                            </div>
                        </div>
                    </div>					
					<div class="span8">
						<div class="box gradient">
							<div class="title">
								<h4>
									<span>Cohort List</span>
								</h4>
							<a href="#" class="minimize">Minimize</a>
							</div>
							<div class="content clearfix noPad">
							<table id="cohorts" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>#ID</td>
										<td>Cohort Name</td>
										<td>Start Date</td>
										<td>End Date</td>
										<td>Status</td>

										<td></td>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($cohorts as $cohort): ?>
									<tr>
										<td><?=$cohort['CohortId']?></td>
										<td><?=$cohort['CohortTitle']?></td>
										<td><?=$cohort['StartDate']?></td>
										<td><?=$cohort['EndDate']?></td>

										<td>

										<?php if($center['IsActive']==1){
												echo('<span class="badge badge-success">Active</span>');
												}else{
													echo('<span class="badge badge-danger">InActive</span>');

												}
										   ?>
										
										</td>
										<?php SetGridActions($center['CenterId'], 'view-center', 'update-center', 'delete-center') ?>
									</tr>
									<?php endforeach; ?>
								</tbody>
							</table>

									</div>
						</div>
					</div>
                </div>
            </div>
        </div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#cohorts').DataTable( {
				dom: 'Bfrtip',
				buttons: [
					'copy', 'csv', 'excel', 'pdf', 'print'
				],
				columnDefs: [
					{
						className: 'dt-body-left'
					}
  ]
		} );
	} );

		
</script>
	
		
<?php
include("Template/Footer.php");
?>