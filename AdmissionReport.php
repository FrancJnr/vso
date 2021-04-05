<?php
$PageName="AdmissionReport";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("Include.php");
IsLoggedIn();
include("Template/HTML.php");
?>    

<?php
include("Template/Header.php");
?>

<?php
include("Template/Sidebar.php");

?>

        <div id="content" class="clearfix">
            <div class="contentwrapper">
			<?php $BreadCumb="Admission Report"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); 
				
				$query="SELECT *FROM vw_registrations
				WHERE IsAdmitted = true";
				
				$check=mysqli_query($CONNECTION,$query) ;
				
    			$DATA=array();
				$QA=array();
				
				while($row=mysqli_fetch_array($check))
				{
					
					$GirlName=$row['GirlName'];
					$PrintSlip='<a target="_blank" href="PrintCert.php?RegistrationId='.$row['RegistrationId'].'">'.$row['RegistrationId'].'</a>';
                    $ListPrintCert='<a target="_blank" href="PrintCert.php?AdmissionId='.$row['AdmissionId'].'"><i class="icomoon-icon-printer-2 tip"></i></a>';
                    $id=$row['RegistrationId'];
                    
					$HouseHeadName=$row['HouseHeadName'];
					$GuardianContact=$row['GuardianContact'];
					$CenterName=$row['CenterName'];
                                        if($row['Gender']=="7"){
                                            $gender="Male";
                                        }
                                        else if($row['Gender']=="8"){
                                            $gender="Female";
                                        }
                                        else{
                                            $gender="N/A";
                                        }
                    $ListGender=$gender;
                    $DataCapturedBY=$row['EfName'];
					$Email=$row['Email'];
					$CohortName=$row['CohortTitle'];
					$County=$row['County'];
					$OOSG_CODE=$row['OOSG_CODE'];
					$Mobile=$row['Mobile'];
					$Dob=$row['Dob'];
				
					$QA[]=array($OOSG_CODE,$GirlName,$CohortName,$CenterName, $County,$village,$HouseHeadName, $Dob,$GuardianContact,$DataCapturedBY);
					
				}
				$DATA['aaData']=$QA;
				$fp = fopen('plugins/Data/data1.txt', 'w');
				fwrite($fp, json_encode($DATA));
				fclose($fp);
				
				?>	
					
                <div class="row-fluid">
                    
				</div>
                <div class="row-fluid">
					<div class="span12">
						<div class="box gradient">
							<div class="title">
								<h4>
									<span>Admission Report </span>
									<?php if($count>0) { ?>
									<div class="PrintClass">
										<form method=post action=Print target=_blank>
										<input type="hidden" name="Action" value="Print" readonly>
										<input type="hidden" name="PrintCategory" value="PrintCategory" readonly>
										<input type="hidden" name="SessionName" value="PrintAdmissionReportList" readonly>
										<input type="hidden" name="HeadingName" value="PrintAdmissionReportHeading" readonly>
										<button class="icomoon-icon-printer-2 tip" title="Print Admission Report List"></button>
										</form>
									</div>
									<?php } ?>
								</h4>
							<a href="#" class="minimize">Minimize</a>
							</div>
							<div class="content noPad clearfix">
                             <a href="#" class="exporta">Export To Excel</a>
							<?php
								$Print1="<table id=\"AdmissionReportTable\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"responsive dynamicTable export display table table-bordered\" width=\"100%\">
									<thead>
										<tr>
											
											<th>OOSG_CODE</th>
											<th>Girl Name</th>
                                            <th>Cohort</th>
                                            <th>Center Name</th>
											<th>County</th>	
											<th>village</th>
											<th>House Head Name </th>
											<th>Dob</th>
											<th>Contact</th>
											<th>Captured By</th>";
											echo $Print1;
											$Print2="</tr>
									</thead>
									<tbody>";
									echo $Print2;
									$Print4="</tbody>
								</table>";
								echo $Print4;
								$PrintList="$Print1 $Print2 $Print3 $Print4";
								$_SESSION['PrintAdmissionReportList']=$PrintList;
								$PrintHeading="Showing List of Admission Report";
								$_SESSION['PrintAdmissionReportHeading']=$PrintHeading;
								$_SESSION['PrintCategory']="Admission Report Session : $CURRENTSESSION";
							?>
							</div>
						</div>					
					</div>
                </div>
            </div>
        </div>
		
<script type="text/javascript">
	$(document).ready(function() {
		$('#AdmissionReportTable').dataTable({
			"sPaginationType": "two_button",
			"bJQueryUI": false,
			"bAutoWidth": false,
			"bLengthChange":true,  
			"bProcessing": true,             
            "aLengthMenu":[[10,25,50,100,-1],[10,25,50,100,"All"]],
			"bDeferRender": true,
			"sAjaxSource": "plugins/Data/data1.txt",
			"fnInitComplete": function(oSettings, json) {
			  $('.dataTables_filter>label>input').attr('id', 'search');
			}
		});	
		
		$('#example').dataTable( {
        "sDom": 'T<"clear">lfrtip',
        "oTableTools": {
            "sSwfPath": "plugins/swf/copy_csv_xls_pdf.swf"
        }
		} );
		
		$("#SectionId").select2();
		$('#SectionId').select2({placeholder: "Select"});
		$("input, textarea, select").not('.nostyle').uniform();
                
                 $(".exporta").click(function(e){
              id=$(this).attr("id");
           $(".export").table2excel({
					//exclude: ".noExl",
					name: "Exported File",
					filename: "exportedList"
				});
                                });
                                
                                //
                                $("#SectionId").change(function(e){
                                
    window.location.search= "?SectionId=" +$(this).val();
                                })
                                
                                
	});
        
       
</script>
<?php
include("Template/Footer.php");
?>