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
             $database = new Database();
             $StudentProgress = new StudentProgress($database->getConnection());
             $studentprogress=$StudentProgress->readAll();
			?>
					
                <div class="row-fluid">				
					<div class="span12">
						<div class="box gradient">
						<!-- <a href="Create" class="create-contact">Create Center</a>							<div class="content clearfix noPad"> -->
							<table id="centers" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>OOSG_CODE</td>
										<td>Girl Name</td>
										<td>Catch Up Center</td>
										<td>County</td>
										<td>Subcounty</td>
										<td>Ef Incharge</td>
										<td></td>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($studentprogress as $progress): ?>
									<tr>
										<td><?=$progress['OOSG_CODE']?></td>
										<td><?=$progress['GirlName']?></td>
										<td><?=$progress['CenterName']?></td>
										<td><?=$progress['County']?></td>
										<td><?=$progress['SubCounty']?></td>
										<td><?=$progress['admisteredBy']?></td>
										<td class="actions">
											<a href="details/<?=$progress['OOSG_CODE']?>" class="edit"><i class='fas fa-file' style='font-size:20px;color:blue'></i></a>
										</td>
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
			$('#sessionTable').DataTable( {
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