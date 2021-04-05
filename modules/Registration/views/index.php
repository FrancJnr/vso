<?php
$PageName="Registration";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("../../../Include.php");
include("../model/Registration.php");
include("../../config/database.php");
IsLoggedIn();
include("../../../Template/HTML.php");
?>    

<?php
include("../../../Template/Header.php");
?>

<?php
include("../../../Template/Sidebar.php");
?><style>
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
.actions{
 overflow: hidden;
 white-space: nowrap;
}
</style>

        <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="Learner Registration"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); ?>

			<?php
			 $db = new Database();
			 $reg = new Registration($db->getConnection());
			 if(isset($_POST['Submit'])){
			 $OOSG_CODE=isset($_POST['OOSG_CODE']) ? $_POST['OOSG_CODE'] : '';
			 $GirlName=isset($_POST['GirlName']) ? $_POST['GirlName'] : '';
			 $CenterId=isset($_POST['CenterId']) ? $_POST['CenterId'] : '';
			 $DOB=isset($_POST['DOB']) ? $_POST['DOB'] : '';
			 $LanguageSpoken=isset($_POST['LanguageSpoken']) ? $_POST['LanguageSpoken'] : '';
			 $HouseHeadName=isset($_POST['HouseHeadName']) ? $_POST['HouseHeadName'] : '';
			 $HouseHeadSex=isset($_POST['HouseHeadSex']) ? $_POST['HouseHeadSex'] : '';
			 $EF=isset($_POST['EF']) ? $_POST['EF'] : '';
			 $HouseHeadSpouseName=isset($_POST['HouseHeadSpouseName']) ? $_POST['HouseHeadSpouseName'] : '';
			 $GuardianContact=isset($_POST['GuardianContact']) ? $_POST['GuardianContact'] : '';
			 $GuardianOcupation=isset($_POST['GuardianOcupation']) ? $_POST['GuardianOcupation'] : '';
				echo($OOSG_CODE." ".$GirlName." ".$CenterName);
			 if($OOSG_CODE==null || $GirlName==null || $CenterId ==null){
			 	echo "Ensure all required fields are populated";
			 }else{
			 
			 	$reg->OOSG_CODE = $OOSG_CODE;
				$reg->GirlName = $GirlName;
				$reg->Efid = $EF;
			 	$reg->CenterId = $CenterId;
			 	$reg->Dob = $DOB;
			 	$reg->LanguageSpoken = $LanguageSpoken;
			 	$reg->HouseHeadName = $HouseHeadName;
			 	$reg->HouseHeadSex = $HouseHeadSex;
				$reg->HouseHeadSpouseName = $HouseHeadSpouseName;
				$reg->GuardianContact = $GuardianContact;
				$reg->GuardianOcupation = $GuardianOcupation;

			 	$reg->insertOne();

			 }
			}
		

			 $registrations = $reg->readAll();
			 ?>	
					<div class="row-fluid">				
					<div class="span12">
						<div class="box gradient">
						<a href="Register" class="btn btn-success" class="create-contact">New Registration </a>							<!-- <div class="content clearfix noPad"> -->
							<table id="RegistrationTable" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
								<thead>
									<tr>
										<td>OOSG_CODE</td>
										<td>NAME</td>
										<td>DOB</td>
										<td>COUNTY</td>
										<td>SUBCOUNTY</td>
										<td>VILLAGE</td>
										<td>DISABILITY</td>
										<td>HOUSE HEAD NAME</td>
										<td>UPDATED ON</td>
										<td>STATUS</td>
										<td></td>


									</tr>
								</thead>
								<tbody>
									<?php foreach ($registrations as $registration): ?>
									<tr>
										<td><?=$registration['OOSG_CODE']?></td>
										<td><?=$registration['GirlName']?></td>
										<td><?=$registration['Dob']?></td>
										<td><?=$registration['County']?></td>
										<td><?=$registration['SubCounty']?></td>
										<td><?=$registration['Village']?></td>
										<td><?=$registration['Disability']?></td>
										<td><?=$registration['HouseHeadName']?></td>
										<td><?=$registration['UpdatedAt']?></td>

										


										<td>

										<?php if($registration['IsAdmitted']==1){
												echo('<span class="badge badge-success">Admitted</span>');
												}else{
													echo('<span class="badge badge-danger">Pending</span>');

												}
										   ?>
										
										</td>
										<?php SetGridActions($registration['RegistrationId'], 'view-learner', 'update-learner', 'delete-learner') ?>

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
        </div>
		
<script type="text/javascript">
	$(document).ready(function() {
		$('#RegistrationTable').DataTable( {
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