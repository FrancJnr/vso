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
			<?php $BreadCumb=""; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			$db = new Database();
			$cohort = new Cohorts($db->getConnection());		
			$sessions=$cohort->listSessions();
			?>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span><?php echo "Sessions"; ?></span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content clearfix noPad">
								<table id="sessionTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
									<thead>
										<tr>
											<td>Session Name</td>
											<td>Catch Up Center</td>
											<td>Total Students</td>
											<td>Date</td>		
											<td>Start Time</td>
											<td>End Time</td>
											<td>EF</td>
											<td>Status</td>	
											<td>View attendance</td>				
										</tr>
									</thead>
									<tbody>
									<?php foreach ($sessions as $session): ?>
										<tr>
											<td><?=$session['SessionId']?></td>
											<td><?=$session['CenterName']?></td>
											<td><?=$session['totalStudents']?></td>
											<td><?=$session['SessionDate']?></td>
											<td><?=$session['StartTime']?></td>
											<td><?=$session['EndTime']?></td>
											<td><?=$session['fullname']?></td>
											<td><?php	
												if($session['SessionActive']==1){
													echo '<span  style="color: green; font-size:20px;">●</span>';
												}else{
													echo '<span  style="color: red; font-size:20px;">●</span>';
												}
												
												?>
											
											</td>
											<td class="actions">
											<a href="sessionClassList/<?=$session['SessionId']?>" class="viewuser"><i class="fa fa-eye"></i></a>
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