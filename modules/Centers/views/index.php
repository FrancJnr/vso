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
			

			<?php $BreadCumb="Manage Centers"; BreadCumb($BreadCumb); ?>
            
				<?php DisplayNotification();?>

			<?php
             $database = new Database();
             $center = new Center($database->getConnection());
			 $centers=$center->readAll();
			 
			?>	
		
                <div class="row-fluid">				
					<div class="span12">
						<div class="box gradient">

						<a  class="btn btn-success" href="create-center" class="create-contact" >Create Center</a>							<!-- <div class="content clearfix noPad"> -->
							<table id="centers" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>Center Name</td>
										<td>County</td>
										<td>Subcounty</td>
										<td>Cohort</td>
										<td>Educator Facilitator</td>
										<td>Last Updated On</td>
										<td>Status</td>

										<td></td>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($centers as $center): ?>
									<tr>
										<td><?=$center['CenterName']?></td>
										<td><?=$center['County']?></td>
										<td><?=$center['SubCounty']?></td>
										<td><?=$center['CohortID']?></td>
										<td><?=$center['StaffName']?></td>
										<td><?=$center['created_at']?></td>

										<td>

										<?php if($center['Status']==1){
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