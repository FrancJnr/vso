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
			<?php $BreadCumb="Attendance List"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			$db = new Database();
			$cohort = new Cohorts($db->getConnection());
			$SessionId=isset($_GET['SessionId']) ? $_GET['SessionId'] : '';
			$cohort->SessionId = $SessionId;
            $present = $cohort->listAttendance(true);
            $absent = $cohort->listAttendance(false);
				
			?>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span><?php echo $SessionId ; ?></span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content" style="padding-bottom:0;">
									<div style="margin-bottom: 20px;">
										<ul id="myTabs" class="nav nav-tabs pattern">
											<li class="active"><a href="#Present" data-toggle="tab">Present</a></li>
											<li><a href="#Absent" data-toggle="tab">Absent</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane fade in active" id="Present">
                                                <div class="content clearfix noPad">
                                                        <table id="learnersPresent" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">                                                           
                                                               <thead>
                                                                    <tr>
                                                                     
                                                                        <td>Name</td>
                                                                        <td>OOSG_CODE</td>
                                                                        <td>Starting From</td>
                                                                        <td>TO</td>
                                                                        <td>Contact Hours</td>
                                                                        <td></td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php foreach ($present as $attended): ?>
                                                                    <tr>
                                                                        <td><?=$attended['GirlName']?></td>
                                                                        <td><?=$attended['OOSG_CODE']?></td>
                                                                        <td><?=$attended['PresentTime']?></td>
                                                                        <td><?=$attended['EndTime']?></td>
                                                                        <td><?=$attended['duration']?></td>
                                                                        <td><?=$attended['Comments']?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <?php endforeach; ?>
                                                             </tbody>
                                                        </table>
                                
                                                </div>
											</div>
											<div class="tab-pane fade" id="Absent">
                                                <div class="content clearfix noPad">
                                                        <table id="learnersAbsent" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
                                                                <thead>
                                                                    <tr>
                                                                     
                                                                        <td>Name</td>
                                                                        <td>OOSG_CODE</td>
                                                                        <td>Reason For Absence</td>
                                                                
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php foreach ($absent as $notattend): ?>
                                                                    <tr>
                                                                        <td><?=$notattend['GirlName']?></td>
                                                                        <td><?=$notattend['OOSG_CODE']?></td>
                                                                        <td><?=$notattend['AbsentReason']?></td>
                                                                 
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
				</div>
			
					
				
					
        
		
<script type="text/javascript">
	// $(document).ready(function() {
	// 	$('#learnersPresent').dataTable({
    //         "sPaginationType": "two_button",
    //         "bJQueryUI": false,
    //         "bAutoWidth": false,
    //         "bLengthChange": false,  
    //         "bProcessing": true,
    //         "bDeferRender": true,
    //         "sAjaxSource": "plugins/Data/data10.txt",
    //         "fnInitComplete": function(oSettings, json) {
    //         $('.dataTables_filter>label>input').attr('id', 'search');
    //         $('#myModal').modal({ show: false});
    //         $('#myModal').on('hidden', function () {
    //             console.log('modal is closed');
    //         })
    //         $("a[data-toggle=modal]").click(function (e) {
    //         lv_target = $(this).attr('data-target');
    //         lv_url = $(this).attr('href');
    //         $(lv_target).load(lv_url);
    //         });	
	// 	}

 
	// });

    // $('#learnersAbsent').dataTable({
    //         "sPaginationType": "two_button",
    //         "bJQueryUI": false,
    //         "bAutoWidth": false,
    //         "bLengthChange": false,  
    //         "bProcessing": true,
    //         "bDeferRender": true,
    //         "sAjaxSource": "plugins/Data/data11.txt",
    //         "fnInitComplete": function(oSettings, json) {
    //         $('.dataTables_filter>label>input').attr('id', 'search');
    //         $('#myModal').modal({ show: false});
    //         $('#myModal').on('hidden', function () {
    //             console.log('modal is closed');
    //         })
    //         $("a[data-toggle=modal]").click(function (e) {
    //         lv_target = $(this).attr('data-target');
    //         lv_url = $(this).attr('href');
    //         $(lv_target).load(lv_url);
    //         });	
	// 	}

 
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