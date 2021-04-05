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
			<?php $BreadCumb="Studying Report"; BreadCumb($BreadCumb); ?>
				
				<?php DisplayNotification(); 
				$GETSectionId=isset($_GET['SectionId']) ? $_GET['SectionId'] : '';
				$StudentStatus=isset($_SESSION['StudentStatus']) ? $_SESSION['StudentStatus'] : '';
				$LoginDetail=isset($_SESSION['LoginDetail']) ? $_SESSION['LoginDetail'] : '';
				$StudentStatusChecked=$ListDOB=$LoginDetailChecked="";
				if($StudentStatus=="Yes")
				{
					$StudentStatusChecked="checked=checked";
					$StudentStatus="Terminated";
				}
				else
				$StudentStatus="";
				if($LoginDetail=="Yes")
				$LoginDetailChecked="checked=checked";
				unset($_SESSION['LoginDetail']);
				$SelectedClass=$ValidSectionId=$ListCurrentClass=$SectionQuery=$Print3=$ListClassName=$ListAddress="";	
				$query3="select ClassName,SectionName,SectionId from class,section where 
					class.ClassId=section.ClassId and class.ClassStatus='Active' and
					section.SectionStatus='Active'  order by ClassName"; //and class.Session='$CURRENTSESSION'
				$check3=mysqli_query($CONNECTION,$query3);
				while($row3=mysqli_fetch_array($check3))
				{
					$ComboCurrentClassName=$row3['ClassName'];
					$ComboCurrentSectionName=$row3['SectionName'];
					$ComboCurrentSectionId=$row3['SectionId'];
					if($GETSectionId==$ComboCurrentSectionId)
					{
						$SelectedClass="selected";
						$ValidSectionId=1;
					}
					else
					$SelectedClass="";
					$ListCurrentClass.="<option value=\"$ComboCurrentSectionId\" $SelectedClass>$ComboCurrentClassName $ComboCurrentSectionName</option>";
				}
				if($GETSectionId!="" && $ValidSectionId==1)
				$SectionQuery="and registration.SectionId='$GETSectionId' ";
				
				$query="select registration.*,admission.*,section.SectionName,studentfee.SectionId,class.ClassName FROM registration left join admission on registration.RegistrationId=admission.RegistrationId left join section on registration.SectionId=section.SectionId left join class on section.ClassId=class.ClassId
                                       left join studentfee on admission.AdmissionId=studentfee.AdmissionId where studentfee.Session='$CURRENTSESSION' and studentfee.term='$CURRENTTERM' and registration.Status LIKE '%Studying%'  $SectionQuery order by section.priority ASC";
                              // die($query); //and registration.Session='$CURRENTSESSION'
				$check=mysqli_query($CONNECTION,$query);
				$count=mysqli_num_rows($check);
				$DATA=array();
				$QA=array();
				while($row=mysqli_fetch_array($check))
				{
					$ListStudentName=$row['StudentName'];
					$ListAdmissionNo=$row['AdmissionNo'];
                                        $reg=$row['AdmissionId'];
                                        $DOA=date("d/m/Y",$row['DOA']);
                                         $ListAdmissionTestMarks=$row["AdmissionTestMarks"];
                                          $DODeposit=date("d/m/Y",$row["DateDepositPaid"]);
					$ListFatherName=$row['FatherName'];
                                        $ListMotherName=$row['MotherName'];
                                         $sectiondetailsjoined=getSectionFromId($row["FirstSection"]);
                                        $classdetailsjoined=  getClassFromSection($row["FirstSection"]);
                                         $ListClassName=$classdetailsjoined["ClassName"].$sectiondetailsjoined["SectionName"];
                                                                       $Sessionterminated = $row['SessionTerminated'];
                                       $class=  getClassDetailsFromSection($row["SectionId"]);
                                       $classname=$class["ClassName"];
                                                                        $sectiondetails=getSectionFromId($row["SectionId"]);
                                                                        $sectionname=$sectiondetails["SectionName"];                                 
                                                                       
        $termterminated=$row["TermTerminated"];
                                        
        $truefalse=TerminationLessThanOrEqualCurrentTerm($termterminated, $Sessionterminated);   
        
        if($truefalse){
					//$ListClassName=$row['ClassName'];
                                        if($row['Gender']=="7"){
                                            $gender="M";
                                        }
                                        else if($row['Gender']=="8"){
                                            $gender="F";
                                        }
                                        else{
                                            $gender="N/A";
                                        }
                                        $ListGender=$gender;
                                        $ListBorder=$row['borderday'];
                                        $ListFatherEmail=$row["FatherEmail"];
                                        $ListFatherMobile=$row["FatherMobile"];
                                          $ListMotherEmail=$row["MotherEmail"];
                                            $ListMotherMobile=$row["MotherMobile"];
                                        $kcpe=$row['kcpe'];
					//$ListSectionName=$row['SectionName'];
                                        //house clubs
                                        $ListHouse=  GetCategoryValueOfId($row["house"],"House");
                                         $ListClubs=GetCategoryValueOfId($row["clubs"],"Clubs");
                                         $ListActivities=$row["activities"];
                                         $ListTransport=GetCategoryValueOfId($row["transport"],"Transport");
                                         $ListSession = $row['FirstSession'];
            $ListTerm=$row["FirstTerm"];
                                        
					$ListParentsPassword=$row['ParentsPassword'];
					$ListStudentsPassword=$row['StudentsPassword'];
					$ListParentsUsername="$ListAdmissionNo@parents";
					$ListStudentsUsername="$ListAdmissionNo@student";
                                        $fee=getFeePaidForTerm($reg);
                                        $feelink="<a href='Payment/$reg'>".$fee["feebalance"]."</a>";
					//$ListAddress=$row['PresentAddress'];
					$ListMobile=$row['Mobile'];
					$ListDate=date("d M Y",$row['Date']);
					if($row['DOB']!="")
					$ListDOB=date("d/m/Y",$row['DOB']);
				if($ListDOB=="01/01/1970"){$ListDOB="-";}
					if($LoginDetail!="Yes")
					{
						$Print3.="<tr class=\"odd gradeX\">
								<td><a href='#'>$ListAdmissionNo</a></td>
								<td>$DOA</td>
                                                                    <td>$ListClassName $ListSectionName</td>
                                                                        <td>$ListDOB</td>
                                                                            <td>$ListGender</td>
								<td>$ListStudentName</td>
								<td>$ListFatherName</td>
								
								<td>$ListMobile</td>
								<td>$ListBorder</td>
								<td>$ListAddress</td>
                                                                    <td>$kcpe</td>
								
                                                                    <td>$feelink</td>
							</tr>";
						$ListClassName.=" $ListSectionName";
						$QA[]=array($classname.$sectionname,$ListAdmissionNo,$ListStudentName,$DOA,$ListDOB,$ListGender,$ListFatherName,$ListFatherMobile,$ListFatherEmail,$ListMotherName,$ListMotherMobile,$ListMotherEmail,$ListHouse,$ListClubs,$ListActivities,$ListTransport,$ListSession,$ListTerm,$ListClassName);
					}
					else
					{
						$Print3.="<tr class=\"odd gradeX\">
								<td>$ListAdmissionNo</td>
								<td>$ListStudentName</td>
								<td>$ListParentsUsername</td>
								<td>$ListParentsPassword</td>
								<td>$ListStudentsUsername</td>
								<td>$ListStudentsPassword</td>
							</tr>";
						$QA[]=array($classname.$sectionname,$ListAdmissionNo,$ListStudentName,$ListParentsUsername,$ListParentsPassword,$ListStudentsUsername,$ListStudentsPassword);	
					}
        }
				}
				$DATA['aaData']=$QA;
				$fp = fopen('plugins/Data/data1.txt', 'w');
				fwrite($fp, json_encode($DATA));
				fclose($fp);
				
				?>	
					
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span>Select Class</span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                            <div  class="content" style="padding:5px;">
								<form class="form-horizontal" action="/ReportAction" name="AdmissionReport" id="AdmissionReport" method="Post">
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4 mandatory" for="SectionId">Class</label>
												<div class="controls sel span8">   
												<select tabindex="1" name="SectionId" id="SectionId" class="nostyle" style="width:100%;" >
												<option></option>
												<?php echo $ListCurrentClass; ?>
												</select>
												</div>
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="normal">Status</label>
												<input tabindex="2" class="styled" id="StudentStatus" type="checkbox" name="StudentStatus" <?php echo $StudentStatusChecked; ?> value="Yes" /> Show only Terminated Student
												<input tabindex="2" class="styled" id="LoginDetail" type="checkbox" name="LoginDetail" <?php echo $LoginDetailChecked; ?> value="Yes" /> Show Student's & Parent's Login
											</div>
										</div>
									</div>
									<input type="hidden" name="Action" value="AdmissionReport" readonly>
									<?php $ButtonContent="Get Student List"; ActionButton($ButtonContent,2,"Submit"); ?>
								</form>
                            </div>
                        </div>
                    </div>	
				</div>
                <div class="row-fluid">
					<div class="span12">
						<div class="box gradient">
							<div class="title">
								<h4>
                                                                        <span>Studying Report <?php echo "Session : $CURRENTSESSION"; ?> <?php if($GETSectionId){echo " FOR ". $ListClassName;}?> </span>
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
							<div style="width:100%;overflow-x:scroll" class="content noPad clearfix">
                                                            <a href="#" class="exporta">Export To Excel</a>
							<?php
								$Print1="<table id=\"AdmissionReportTable\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"responsive dynamicTable export display table table-bordered\" width=\"100%\">
									<thead>
										<tr>
                                                                                <th>CLASS</th>
                                                                                <th>ADMISSION NO</th>
                                                                                
											<th>STUDENTS NAME</th>
                                                                                        <th>ADMISSION DATE</th>
											<th>BIRTH DATE</th>
                                                                                        <th>GENDER</th>
                                                                                        	<th>FATHERS NAME</th>
                                                                                                <th>MOBILE NO</th>
                                                                                                <th>EMAIL ADDRESS</th>
											";
											if($LoginDetail!="Yes")
											{
											$Print1.="
											<th>MOTHER'S NAME</th>
                                                                                         	<th>MOBILE NO</th>
											<th>EMAIL ADDRESS</th>
									
                                                                                        <th>HOUSE</th>".
                                                                                                "<th>CLUBS</th>".
                                                                                                "<th>ACTIVITIES</th>".
                                                                                                "<th>TRANSPORT</th>".
                                                                                                "<th>ACADEMIC YEAR JOINED</th>".
                                                                                                "<th>TERM JOINED</th>".
                                                                                                "<th>FIRST CLASS JOINED</th>"
                                                                                                ;
                                                                                        
											}
											else
											{
											$Print1.="<th>Parents Username</th>
											<th>Parents Password</th>
											<th>Students Username</th>
											<th>Students Password</th>";											
											}
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