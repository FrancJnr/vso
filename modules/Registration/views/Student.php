<?php
$PageName="Students";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("../../../Include.php");
include("../model/Student.php");
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
<style>
	.btn-success {
		color: #fff;
		background-color: #28a745;
		border-color: #28a745;
		display: inline;
		/* position: fixed; */
		height:30px;
	}
	.dataTables_filter {
	margin-left:150vH;
	position:relative;
	margin-top:-60px;
	height:30px;

	}
	.dt-buttons{
		margin-top:-20px;
		position:absolute;
		margin-left:110vH;
		height:100px;

	}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-color: #000000;
}
modal {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 1050;
    display: table;
    overflow: hidden;
    outline: 0;
}
</style>

    <div id="content" class="clearfix">
            <div class="contentwrapper">	
				<?php DisplayNotification(); ?>

			<?php
			 $db = new Database();
			 $stdnt = new Student($db->getConnection());
			 $students = $stdnt->readAll("vw_registrations", "WHERE IsAdmitted = false"); 		                
			 ?>	
					
                    <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span>Pending Admissions</span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content" style="padding-bottom:0;">
                                                <div class="content clearfix noPad">
                                                        <table id="NotAdmittedTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
                                                            <thead>
                                                                <tr>
																		<th>Name</th>
                                                                        <th>OOSG_CODE</th>
																		<th>Catch Up Center</th>	
                                                                        <th>Dob</th>	
                                                                        <th>CohortTitle</th>
																		<th>EF</th>
																		<th>GuardianContact</th>
																		<th>Status</th>	
																		<th>Actions</th>					
                                                                </tr>
                                                            </thead>
                                                            <tbody>
																	<?php foreach ($students as $student): ?>
																	<tr>
																		<td><?=$student['GirlName']?></td>
																		<td><?=$student['OOSG_CODE']?></td>
																		<td><?=$student['CenterName']?></td>
																		<td><?=$student['Dob']?></td>
																		<td><?=$student['CohortTitle']?></td>
																		<td><?=$student['EfName']?></td>
																		<td><?=$student['GuardianContact']?></td>

																		<td>

																		<?php if($student['IsAdmitted']==1){
																				echo('<span class="badge badge-success">Admitted</span>');
																				}else{
																					echo('<span class="badge badge-danger">Pending</span>');

																				}
																		?>
																		
																		</td>
																		<?php SetGridActions($student['RegistrationId'], 'Admit', 'Delete', 'modules/Users/views/view-staff.php') ?>
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
        </div>
		
		<script type="text/javascript">
		$(document).ready(function() {
			$('#NotAdmittedTable').DataTable( {
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
	$('#create-center').appendTo("body").modal('show');

		
</script>
<?php
include("Template/Footer.php");
?>