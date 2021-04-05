<?php
$PageName="Registrations";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
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
$indexlink= '<a href="Registration"><i style="font-size:25px" class="fa fa-chevron-circle-left" aria-hidden="true"></i>
</a>';
?>



        <div id="content" class="clearfix">
            <div class="contentwrapper">

                <?php
                    $database = new Database();
                    $registration = new Registration($database->getConnection());
                    $RegistrationId = isset($_GET['RegistrationId']) ? $_GET['RegistrationId'] : '';
                    $registration->RegistrationId= $RegistrationId;
					$row = $registration->selectOne();
		
					if (isset($_POST['update'])){
						$admissionTask="Learner's Details Updated";
						foreach ($_POST as $key => $value){
							$registration->RegistrationId= $RegistrationId;
							
							$registration->$key = $value;
							$registration->updateRegistration();
							$row = $registration->selectOne();
							// var_dump($row);
						}
					}
					$title = $row['GirlName']."--".$row['OOSG_CODE'];
								                
                ?>
							   
				<?php $BreadCumb=$indexlink; BreadCumb($BreadCumb); ?>
				<?php echo'<p style="background-color:white; font-size:20px;"><b>'.$title.'</b><p>' ?>
                <div class="row-fluid">
                    <div class="span12">
						<div class="alert alert-info"><?php echo $admissionTask; ?></div>
                        <div class="box chart gradient">
                            <div class="title">
                             
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div class="content" style="width:98%; margin-bottom:10px; float:left; clear:both; ">
								<form class="form-horizontal well"  name="admit" id="admit" method="Post">
							
								<div class="row-fluid">
									<div class="span4">
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4 mandatory" for="GirlName">GirlName:</label>
													<input class="span8" tabindex="2"  id="GirlName" type="text" name="GirlName" value="<?php echo $row["GirlName"]; ?>" />
												</div>
											</div>
										</div>
			
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="OOSG_CODE">OOSG_CODE:</label>
													<input class="span8"  tabindex="5" id="OOSG_CODE" type="text" name="OOSG_CODE" value="<?php echo $row["OOSG_CODE"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="DOB">DOB</label>
													<input class="span8" tabindex="19"  id="dob" type="text" name="Dob" value="<?php echo $row["Dob"]; ?>" />
												</div>
											</div>
										</div>	
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="Village">Village:</label>
													<input class="span8" tabindex="6" id="Village" type="text" name="Village" value="<?php echo $row["Village"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="Ward">Ward:</label>
													<input class="span8" tabindex="7" id="Ward" type="text" name="Ward" value="<?php echo $row["Ward"]; ?>" />
												</div>
											</div>
										</div>

										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="CenterName">Catch Up Center:</label>
													<input class="span8" tabindex="7" id="CenterName" type="text" name="CenterName" value="<?php echo $row["CenterName"]; ?>" />
												</div>
											</div>
										</div>
									</div>
									<div class="span4">
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="County">County:</label>
													<input class="span8" tabindex="8" id="County" type="text" name="County" value="<?php echo $row["County"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="Country">Sub County:</label>
													<input class="span8" tabindex="9" id="SubCounty" type="text" name="SubCounty" value="<?php echo $row["SubCounty"]; ?>" />
												</div>
											</div>
										</div>
										
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="LanguageSpoken">Language Spoken</label>
													<input class="span8" tabindex="11" id="LanguageSpoken" type="text" name="LanguageSpoken" value="<?php echo $row["LanguageSpoken"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="details">details:</label>
													<div class="span8 controls-textarea">   
													<textarea rows="8" tabindex="4" class="span12 tip"  name="details" id="details"><?php echo $row["details"]; ?></textarea>
													</div>
												</div>
											</div>
										</div>
										
									</div>
									<div class="span4">
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="HouseHeadName">Name Of House Head:</label>
													<input class="span8" tabindex="15" id="HouseHeadName" type="text" name="HouseHeadName" value="<?php echo $row["HouseHeadName"]; ?>" />
												</div>
											</div>
										</div>
										
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="HouseHeadSex">House Head Gender:</label>
													<input class="span8" tabindex="17" id="HouseHeadSex" type="text" name="HouseHeadSex" value="<?php echo $row["HouseHeadSex"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="HouseHeadSpouseName">Spouse Name</label>
													<input class="span8" tabindex="18" id="HouseHeadSpouseName" type="text" name="HouseHeadSpouseName" value="<?php echo $row["HouseHeadSpouseName"]; ?>" />
												</div>
											</div>
										</div>
										
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="GuardianContact">Guardian/House head Contact</label>
													<input class="span8" tabindex="19"  id="GuardianContact" type="text" name="GuardianContact" value="<?php echo $row["GuardianContact"]; ?>" />
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="GuardianOcupation">Guardian/House head Occupation</label>
													<input class="span8" tabindex="19"  id="GuardianOcupation" type="text" name="GuardianOcupation" value="<?php echo $row["GuardianOcupation"]; ?>" />
												</div>
											</div>
										</div>	
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="CreatedByUser">Details Captured By:</label>
													<input class="span8" tabindex="19"  id="CreatedByUser" type="text" name="CreatedByUser" value="<?php echo $row["CreatedByUser"]; ?>" />
												</div>
											</div>
										</div>
										
									</div>
									
								</div>
								<hr>
									<div>
										<center>
										<button style="width:150px" type="submit" name="update" tabindex="20" class="btn btn-success">Update Details</button>
										<a  style="width:150px" href="Registration" class="btn btn-primary">Back</a>

										</center>

									</div>
								
								</div>
									
									
								</div>
								
								</div>
								</form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
<script type="text/javascript">
	$(document).ready(function() {
		if($('#dob').length) {
		$('#dob').datepicker({ yearRange: "-180:+0", dateFormat: 'dd-mm-yy',changeMonth: true, changeYear: true });
		}
	
		$("input, textarea, select").not('.nostyle').uniform();
		$("#GeneralSetting").validate({
			rules: {
				SchoolStartDate: {
					required: true,
				},
				SchoolName: {
					required: true,
				},
				Mobile: {
					remote: "RemoteValidation?Action=MobileValidation&Id=Mobile"
				},
				AlternateMobile: {
					remote: "RemoteValidation?Action=MobileValidation&Id=AlternateMobile"
				},
				Landline: {
					remote: "RemoteValidation?Action=LandlineValidation&Id=Landline"
				}
			},
			messages: {
				SchoolStartDate: {
					required: "Please select this!!",
				},
				SchoolName: {
					required: "Please enter this!!",
				},
				Mobile: {
					remote: jQuery.format("<?php echo $MOBILENUMBERDIGIT; ?> Digit mobile number!!")
				},
				AlternateMobile: {
					remote: jQuery.format("<?php echo $MOBILENUMBERDIGIT; ?> Digit mobile number!!")
				},
				Landline: {
					remote: jQuery.format("11 Digit landline number!!")
				}
			}   
		});
	});
</script>
<?php
include("Template/Footer.php");
?>