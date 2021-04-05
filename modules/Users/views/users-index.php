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
			<?php $BreadCumb="Manage Users"; BreadCumb($BreadCumb); ?>
            
				<?php DisplayNotification();?>

			<?php
             $database = new Database();
             $user = new Staff($database->getConnection());
             $users=$user->readAll("vw_users", "WHERE Username !='masteruser'");
			?>			
                <div class="row-fluid">				
					<div class="span12">
						<div class="box gradient">
							<table id="centers" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>Name</td>
										<td>Type</td>
                                        <td>User Name</td>
										<td>First Password</td>
                                        <td>User Since</td>
										<td>Status</td>
										<td>Actions</td>

									</tr>
								</thead>
								<tbody>
									<?php foreach ($users as $user): ?>
									<tr>
										<td><?=$user['fullname']?></td>
										<td><?=$user['Position']?></td>
                                        <td><?=$user['Username']?></td>
										<td><?=$user['first_password']?></td>
                                        <td><?=$user['DOE']?></td>
										<td>

										<?php if($staff['is_active']==1){
												echo('<span class="badge badge-success">Active</span>');
												}else{
													echo('<span class="badge badge-danger">InActive</span>');

												}
										   ?>
										
										</td>
										<?php SetGridActions($user['UserId'], 'AccessRoles', 'Delete', 'AccessRoles') ?>
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
			$('#centers').DataTable( {
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