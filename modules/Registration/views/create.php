<?php
$PageName="Centers";
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
?>

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
			?>
			<div id="content" class="clearfix">
            <div class="contentwrapper">
                <?php $BreadCumb="Register Learners"; BreadCumb($BreadCumb); ?>
                
                <?php if ($msg): ?>
                <p><?=$msg?></p>
                <?php endif; ?>

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
								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span4" for="CohortId" readonly>Cohort</label>
											<div class="controls sel span8">   
												<select tabindex="1" name="CohortId" id="CohortId" class="nostyle" style="width:100%;" >
												<option></option>
												<?php echo ListCohorts(); ?>
												</select>
											</div>
										</div>
									</div>
								</div>
								</div>
									<div class="span4">
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
												<label class="form-label span4" for="SubCounty">County:</label> 

												<div class="controls sel span8">   
												<select tabindex="303" class="nostyle" name="County" id="County" style="width:100%; padding-right:10px;">
                                                    <option></option>
													<?php 
															$query="select id,county_name
															 from counties";
																$check=mysqli_query($CONNECTION,$query);
																$count=mysqli_num_rows($check);
																while($row=mysqli_fetch_array($check))
																	{
																		echo "<option value='".$row['id']."'>".$row['county_name']."</option>";
																		
																	}
										
                                                        ?>
                                                    </select>
												</div>
												</div>
											</div>
										</div>
										<div class="form-row row-fluid">
											<div class="span12">
                                            <div class="row-fluid">
                                            <label class="form-label span4" for="SubCounty">Sub County:</label> 
                                            <div class="span8 controls sel">   
                                                    <select tabindex="303" class="nostyle" name="SubCounty" id="SubCounty" style="width:100%;">
                                                    
                                                    </select>
                                                </div> 
                                            </div>
                                        </div> 
										</div>
										
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="LanguageSpoken">Language Spoken:</label>
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
													<label class="form-label span4" for="HouseHeadSpouseName">Spouse Name:</label>
													<input class="span8" tabindex="18" id="HouseHeadSpouseName" type="text" name="HouseHeadSpouseName" value="<?php echo $row["HouseHeadSpouseName"]; ?>" />
												</div>
											</div>
										</div>
										
										<div class="form-row row-fluid">
											<div class="span12">
												<div class="row-fluid">
													<label class="form-label span4" for="GuardianContact">Guardian/House head Contact:</label>
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
                                    <button class="btn btn-success">Save</button>
                                    <a  href="Registration" class="btn btn-primary">Back</a>

                                    </center>

                                    </div>
								
								</div>
								</form>
                            </div>

				
				
            </div>
    </div>
<script type="text/javascript">
	$(document).ready(function() {
		$( "select[name='County']" ).change(function () {
			var CountyId = $(this).val();
			if(CountyId) {
				$url = "ajaxCall/";
				$.ajax({
					url: $url,
					dataType: 'Json',
					data: {'id':CountyId},
					success: function(data) {
						$('select[name="SubCounty"]').empty();
						$.each(data, function(key, value) {
							$('select[name="SubCounty"]').append('<option value="'+ key +'">'+ value +'</option>');

						});

					}

				});


			}else{

				$('select[name="SubCounty"]').empty();

			}

		});
                
	});
</script>
<?php
include("Template/Footer.php");
?>