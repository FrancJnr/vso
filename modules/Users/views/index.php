<?php
$PageName="Staffs";
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
			<?php $BreadCumb="Manage Staff"; BreadCumb($BreadCumb); ?>
            
				<?php DisplayNotification();?>

			<?php
             $database = new Database();
             $staff = new Staff($database->getConnection());
             $staffs=$staff->readAll("vw_staffs");
			?>			
                <div class="row-fluid">				
					<div class="span12">
						<div class="box gradient">
						<a href="modules/Users/views/create.php" class="btn btn-success" class="create-contact">Add Staff</a>							<!-- <div class="content clearfix noPad"> -->
							<table id="staff" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>Name</td>
										<td>Position</td>
										<td>County</td>
										<td>Center</td>
										<td>DOB</td>
										<td>Phone Number</td>
										<td>Email</td>
										<td>Status</td>
										<td>Actions</td>

									</tr>
								</thead>
								<tbody>
									<?php foreach ($staffs as $staff): ?>
									<tr>
										<td><?=$staff['staffName']?></td>
										<td><?=$staff['Position']?></td>
										<td><?=$staff['county_name']?></td>
										<td><?=$staff['CenterName']?></td>
										<td><?=$staff['Dob']?></td>
										<td><?=$staff['phone_number']?></td>
										<td><?=$staff['email']?></td>

										<td>

										<?php if($staff['active']==1){
												echo('<span class="badge badge-success">Active</span>');
												}else{
													echo('<span class="badge badge-danger">InActive</span>');

												}
										   ?>
										
										</td>
										<?php SetGridActions($staff['id'], 'modules/Users/views/edit-staff.php', 'Delete', 'modules/Users/views/view-staff.php') ?>
									</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
							<!-- </div> -->
						</div>
					</div>
                </div>
            </div>
        </div>
		
        <script type="text/javascript">
		$(document).ready(function() {
			$('#staff').DataTable( {
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