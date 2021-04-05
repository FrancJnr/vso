<?php
$PageName="Students";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("../../../Include.php");
include("..//model/StudentProgress.php");
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
			<?php $BreadCumb=""; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			 $db = new Database();
			 $stdnt = new StudentProgress($db->getConnection());
			 $students = $stdnt->readAll(); 
			 
			$OOSG_CODE = isset($_GET['id'])? $_GET['id']:'';
           
		
			 ?>	
					
                    <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="content" style="padding-bottom:0;">
                                <div class="content clearfix noPad">
                                        <table id="NotAdmittedTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
                                        <thead>
                                                <tr>
                                                    <td>OOSG_CODE</td>
                                                    <td>Girl Name</td>
                                                    <td>Center Name</td>
                                                    <td>Cohort</td>
                                                    <td>Initiate On</td>
													<td>Recommended To</td>
													<td>Status</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ($students as $student): ?>
                                                <tr>
                                                    <td><?=$student['OOSG_CODE']?></td>
                                                    <td><?=$student['GirlName']?></td>
                                                    <td><?=$student['CenterName']?></td>
                                                    <td><?=$student['CohortTitle']?></td>
                                                    <td><?='2020/08/12'?></td>
													<td><?='Enterprenuership'?></td>
													<td>Pending Approval</td>
                                                    <td class="actions">
                                                        <a  href="Promotion?id=<?=$student['OOSG_CODE']?>" class="edit"><i style="font-size:20px" class="fas fa-arrow-alt-circle-right"></i></a>
                                                    </td>
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

		
</script>
<?php
include("Template/Footer.php");
?>