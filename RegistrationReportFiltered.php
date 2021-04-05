<?php
$PageName = "Waiting List";
$TooltipRequired = 1;
$SearchRequired = 1;
$FormRequired = 1;
$TableRequired = 1;
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
        <?php $BreadCumb = "Waiting List Report";
        BreadCumb($BreadCumb); ?>

        <?php
        DisplayNotification();
        $GETSectionId = isset($_GET['SectionId']) ? $_GET['SectionId'] : '';
        $StudentStatus = isset($_SESSION['StudentStatus']) ? $_SESSION['StudentStatus'] : '';
        $LoginDetail = isset($_SESSION['LoginDetail']) ? $_SESSION['LoginDetail'] : '';
        $StudentStatusChecked = $ListDOB = $LoginDetailChecked = "";
        if ($StudentStatus == "Yes") {
            $StudentStatusChecked = "checked=checked";
            $StudentStatus = "Terminated";
        } else
            $StudentStatus = "";
        if ($LoginDetail == "Yes")
            $LoginDetailChecked = "checked=checked";
        unset($_SESSION['LoginDetail']);
        $SelectedClass = $ValidSectionId = $ListCurrentClass = $SectionQuery = $Print3 = $ListClassName = $ListAddress = "";
        $query3 = "select ClassName,SectionName,SectionId from class,section where 
					class.ClassId=section.ClassId and class.ClassStatus='Active' and
					section.SectionStatus='Active'  order by ClassName"; //and class.Session='$CURRENTSESSION'
        $check3 = mysqli_query($CONNECTION, $query3);
        while ($row3 = mysqli_fetch_array($check3)) {
            $ComboCurrentClassName = $row3['ClassName'];
            $ComboCurrentSectionName = $row3['SectionName'];
            $ComboCurrentSectionId = $row3['SectionId'];
            if ($GETSectionId == $ComboCurrentSectionId) {
                $SelectedClass = "selected";
                $ValidSectionId = 1;
            } else
                $SelectedClass = "";
            $ListCurrentClass.="<option value=\"$ComboCurrentSectionId\" $SelectedClass>$ComboCurrentClassName $ComboCurrentSectionName</option>";
        }
        if ($GETSectionId != "" && $ValidSectionId == 1)
            $SectionQuery = "and registration.SectionId='$GETSectionId' ";

        $query = "select registration.*,registration.DateDepositPaid as DepositDate,registration.DOAcceptance as AcceptanceDate,registration.DORecords as recordsdate,admission.*,section.SectionName,class.ClassName FROM registration left join admission on registration.RegistrationId=admission.RegistrationId left join section on registration.SectionId=section.SectionId left join class on section.ClassId=class.ClassId
                                       where  registration.Status LIKE '%NotAdmitted%' order by section.priority ASC 
					 $SectionQuery"; //registration.Session='$CURRENTSESSION'
        //die($query);
        $check = mysqli_query($CONNECTION, $query) or die(mysqli_error($CONNECTION));
        $count = mysqli_num_rows($check);
        $DATA = array();
        $QA = array();
        while ($row = mysqli_fetch_array($check)) {
            $ListStudentName = $row['StudentName'];
            $ListAdmissionNo = '<a target="_blank" href="PrintCert.php?AdmissionId=' . $row['AdmissionId'] . '">' . $row['AdmissionNo'] . '</a>';
            $reg = $row['AdmissionId'];
            
            $DOAdmission = date("d/m/Y", $row['DOA']);
            $ListDOR = date("d/m/Y", $row['DOR']);

            $ListAdmissionTestMarks = $row["TestMarks"];
            $DODeposit = date("d/m/Y", $row["DepositDate"]);
             if($DODeposit=="01/01/1970"){$DODeposit="-";}
              $AcceptanceDate = date("d/m/Y", $row["AcceptanceDate"]);
              if($AcceptanceDate=="01/01/1970"){$AcceptanceDate="-";}
            $ListFatherName = $row['FatherName'];
            $ListMotherName = $row['MotherName'];
           // $ListClassName = $row['ClassName'];
            
             $sectiondetailsjoined=getSectionFromId($row["FirstSection"]);
                                        $classdetailsjoined=  getClassFromSection($row["FirstSection"]);
                                         $ListClassName=$classdetailsjoined["ClassName"].$sectiondetailsjoined["SectionName"];
            if ($row['Gender'] == "7") {
                $gender = "M";
            } else if ($row['Gender'] == "8") {
                $gender = "F";
            } else {
                $gender = "N/A";
            }
            $ListGender = $gender;
            $ListBorder = $row['borderday'];
            $ListFatherEmail = $row["FatherEmail"];
            $ListFatherMobile = $row["FatherMobile"];
            $ListMotherEmail = $row["MotherEmail"];
            $ListMotherMobile = $row["MotherMobile"];
            $kcpe = $row['kcpe'];
            $ListSectionName = $row['SectionName'];
            $ListPreviousSchool = $row['PreviousSchool'];
            $ListDORecords = date("d/m/Y",$row['recordsdate']);
              if($ListDORecords =="01/01/1970"){$ListDORecords ="-";}
            $ListSession = $row['FirstSession'];
            $ListTerm=$row["FirstTerm"];
            if(!$ListTerm){$ListTerm="-";}
            $ListSpecialRemarks = $row['SpecialRemarks'];
            
            $ListEnglish=$row["english"];
            $ListMaths=$row["maths"];
            $ListScience=$row["science"];
     $ListEnglish2=$row["english2"];
            $ListMaths2=$row["maths2"];
            $ListScience2=$row["science2"];
            
            $ListParentsPassword = $row['ParentsPassword'];
            $ListStudentsPassword = $row['StudentsPassword'];
            $ListParentsUsername = "$ListAdmissionNo@parents";
            $ListStudentsUsername = "$ListAdmissionNo@student";
            $fee = getFeePaidForTerm($reg);
            $feelink = "<a href='Payment/$reg'>" . $fee["feebalance"] . "</a>";
            //$ListAddress=$row['PresentAddress'];
            $ListMobile = $row['Mobile'];
            $ListDate = date("d M Y", $row['Date']);
            if ($row['DOB'] != "")
                $ListDOB = date("d M Y", $row['DOB']);
            if ($LoginDetail != "Yes") {
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
               // $ListClassName.=" $ListSectionName";
                $QA[] = array($ListClassName,$ListStudentName, $ListGender, $ListDOB,$ListPreviousSchool, $ListFatherName, $ListFatherEmail, $ListFatherMobile, $ListMotherName, $ListMotherEmail, $ListMotherMobile, $ListDOR, $ListSession, $ListTerm, $ListClassName, $ListEnglish,$ListEnglish2,$ListMaths,$ListMaths2,$ListScience,$ListScience2,$ListDORecords, $AcceptanceDate , $DODeposit,$ListSpecialRemarks, "");
            } else {
                $Print3.="<tr class=\"odd gradeX\">
								<td>$ListAdmissionNo</td>
								<td>$ListStudentName</td>
								<td>$ListParentsUsername</td>
								<td>$ListParentsPassword</td>
								<td>$ListStudentsUsername</td>
								<td>$ListStudentsPassword</td>
							</tr>";
                $QA[] = array($ListClassName,$ListAdmissionNo, $ListStudentName, $ListParentsUsername, $ListParentsPassword, $ListStudentsUsername, $ListStudentsPassword);
            }
        }
        $DATA['aaData'] = $QA;
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
                    <div class="content" style="padding:5px;">
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
<?php $ButtonContent = "Get Student List";
ActionButton($ButtonContent, 2); ?>
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
                            <span>Waiting List Report <?php echo "Session : $CURRENTSESSION"; ?> </span>
<?php if ($count > 0) { ?>
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
                    <div style="overflow-x:scroll;width:100%" class="content noPad clearfix">
                        <a href="#" class="exporta">Export To Excel</a>
<?php
$Print1 = "<table id=\"AdmissionReportTable\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"responsive dynamicTable export display table table-bordered\" width=\"100%\">
									<thead>
										<tr>
                                                                                <th>CLASS APPLYING</th>
											<th>STUDENTS NAME</th>
                                                                                        <th>GENDER</th>
                                                                                        
											<th>BIRTH DATE</th>
                                                                                        <th>PREVIOUS SCHOOL</th>
                                                                                        	<th>FATHERS NAME</th>
                                                                                                <th>EMAIL ADDRESS</th>
											<th>MOBILE NO</th>";
if ($LoginDetail != "Yes") {
    $Print1.="
											<th>MOTHER'S NAME</th>
											<th>EMAIL ADDRESS</th>
										<th>MOTHERS MOBILE</th>
                                                                                <th>DATE APPLICATION SUBMITTED</th>
                                                                                <th>ACADEMIC YEAR APPLYING</th>
                                                                                <th>TERM APPLYING</th>
                                                                                        <th>CLASS APPLYING</th>" .
            "<th>ENGLISH P1</th><th>ENGLISH P2</th><th>MATHS P1</th><th>MATHS P2</th><th>SCIENCE P1</th><th>SCIENCE P2</th>"
            . "<th>DATE RECORDS REVIEWED</th>" .
            "<th>ACCEPTANCE DATE</th>" . "<th>DATE DEPOSIT PAID</th>" . "<th>SPECIAL REMARKS</th>";
} else {
    $Print1.="<th>Parents Username</th>
											<th>Parents Password</th>
											<th>Students Username</th>
											<th>Students Password</th>";
}
echo $Print1;
$Print2 = "</tr>
									</thead>
									<tbody>";
echo $Print2;
$Print4 = "</tbody>
								</table>";
echo $Print4;
$PrintList = "$Print1 $Print2 $Print3 $Print4";
$_SESSION['PrintAdmissionReportList'] = $PrintList;
$PrintHeading = "Showing List of Admission Report";
$_SESSION['PrintAdmissionReportHeading'] = $PrintHeading;
$_SESSION['PrintCategory'] = "Admission Report Session : $CURRENTSESSION";
?>
                    </div>
                </div>					
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#AdmissionReportTable').dataTable({
            "sPaginationType": "two_button",
            "bJQueryUI": false,
            "bAutoWidth": false,
            "bLengthChange": true,
            "bProcessing": true,
            "aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
            "bDeferRender": true,
            "sAjaxSource": "plugins/Data/data1.txt",
            "fnInitComplete": function (oSettings, json) {
                $('.dataTables_filter>label>input').attr('id', 'search');
            }
        });

        $('#example').dataTable({
            "sDom": 'T<"clear">lfrtip',
            "oTableTools": {
                "sSwfPath": "plugins/swf/copy_csv_xls_pdf.swf"
            }
        });

        $("#SectionId").select2();
        $('#SectionId').select2({placeholder: "Select"});
        $("input, textarea, select").not('.nostyle').uniform();

        $(".exporta").click(function (e) {
            id = $(this).attr("id");
            $(".export").table2excel({
                //exclude: ".noExl",
                name: "Exported File",
                filename: "exportedList"
            });
        });

        //
        $("#SectionId").change(function (e) {

            window.location.search = "?SectionId=" + $(this).val();
        })


    });


</script>
<?php
include("Template/Footer.php");
?>