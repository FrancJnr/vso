<style>
table.responsive {  border:1px solid #2e2e2e; background: whitesmoke;  border-collapse: collapse;  width:99%;  margin:0 auto;  margin-bottom:10px; margin-top:10px;}
//table.responsive tr:hover {   background: lightsteelblue !important;}
table.responsive th, table.responsive td {  border: 1px #2e2e2e solid;  padding: 0.2em;padding-bottom:3px;  padding-left:10px; vertical-align:top}
table.responsive th {  background: gainsboro;  text-align: left;}
table.responsive caption {  margin-left: inherit;  margin-right: inherit;}
table.responsive tr:hover{background-color:#ddd;}
</style>
<?php
include("Include.php");
IsLoggedIn();
$Action=$_POST['Action'];
if($Action=="")
header("Location:LogIn");
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="SetPermission")
{
	$UserType=$_POST['UserType'];
	header("Location:Permission/SetPermission/$UserType");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="ExamReport")
{
	$StudentId=$_POST['StudentId'];
        $section=$_POST["SectionId"];
        
        $classdetails=getClassDetailsFromSection($section);
        if(strtolower($classdetails["report_format"])=="split_table"){
            if(empty($StudentId)){
                echo "Select student first";	
            }else{
	header("Location:PrintExamReportt?AdmissionId=$StudentId&SectionId=$section");	
            }
        }
        else{
             if(!isset($StudentId)){
                header("Location:PrintExamReportSingle?AdmissionId=all&SectionId=$section");	
            }else{
          header("Location:PrintExamReportSingle?AdmissionId=$StudentId&SectionId=$section");
            }
        }
}

elseif($Action=="ExamReportt")
{
	$StudentId=$_POST['StudentId'];
        $section=$_POST["SectionId"];
        $classdetails=getClassDetailsFromSection($section);
        $pupils=  getSectionPupilsDetails($section);

        if(strtolower($classdetails["report_format"])=="split_table"){
          
            if(empty($StudentId)){ //ie if all students selcted
             
                foreach ($pupils as $value) {
                  echo "<script type='text/javascript'>"
                    . "window.open('PrintExamReport?AdmissionId=$value&SectionId=$section')"
                          . "</script>";
              //header("Location:PrintExamReport?AdmissionId=$value&SectionId=$section");	
                  }
            }
            else{
             header("Location:PrintExamReport?AdmissionId=$StudentId&SectionId=$section");    
            }
          
        }
        else{
             if(empty($StudentId)){
                 foreach ($pupils as $value) {
                  echo "<script type='text/javascript'>"
                    . "window.open('PrintExamReportSingle?AdmissionId=$value&SectionId=$section')"
                          . "</script>";
              //header("Location:PrintExamReport?AdmissionId=$value&SectionId=$section");	
                  }
                //header("Location:PrintExamReportSingle?AdmissionId=all&SectionId=$section");	
            }else{
          header("Location:PrintExamReportSingle?AdmissionId=$StudentId&SectionId=$section");
            }
        }
     
}

elseif($Action=="ExamReportSpecial")
{
	$StudentId=$_POST['StudentId'];
        $section=$_POST["SectionId"];
        $classdetails=getClassDetailsFromSection($section);
        $pupils=  getSectionPupilsDetails($section);

       if(empty($StudentId)){ //ie if all students selcted
             
                foreach ($pupils as $value) {
                  echo "<script type='text/javascript'>"
                    . "window.open('SpecialReportPrint?AdmissionId=$value&SectionId=$section')"
                          . "</script>";
              //header("Location:PrintExamReport?AdmissionId=$value&SectionId=$section");	
                  }
            }
            else{
             header("Location:PrintExamReport?AdmissionId=$StudentId&SectionId=$section");    
            }
     
}

elseif($Action=="ExamReportSection")
{
	$examid=$_POST['examid'];
        if($examid){
            header("Location:PrintReport/$examid");
        }
        else{
    header("Location:ExamReport/");        
        }
      
	//header("Location:PrintExamReport/$StudentId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="PaymentSelectStudent")
{
	$AdmissionId=$_POST['AdmissionId'];
	header("Location:Payment/$AdmissionId");	
}
elseif($Action=="PaymentSelectStudentTemp")
{
  $AdmissionId=$_POST['AdmissionId'];
  header("Location:PaymentTemp/$AdmissionId");  
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="SCMarksSetup")
{
	$ExamIdSectionId=explode("-",$_POST['ExamId']);
	$ExamId=$ExamIdSectionId[0];
	$SectionId=$ExamIdSectionId[1];
	$SCAreaId=$_POST['SCAreaId'];
	header("Location:SCMarksSetup/$ExamId/$SCAreaId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="MarksSetupReportAction")
{
	$ExamIdSectionId=explode("-",$_POST['ExamId']);
	$ExamId=$ExamIdSectionId[0];
	$SectionId=$ExamIdSectionId[1];
	$SubjectId=$_POST['SubjectId'];
        $staffid=$_SESSION['StaffId'];
       // die($SubjectId."*".$SectionId."*".$staffid);
        $issubjecteacher=checkIsSubjectTeacher($SubjectId, $SectionId, $staffid);
if($issubjecteacher==TRUE || strtolower($_SESSION["USERNAME"])=="masteruser"){
	header("Location:MarksSetup/$ExamId/$SubjectId");	
        }
        else{
            $Message="Not allowed to access subject,you must be the subject teacher";
		$Type=error;
		SetNotification($Message,$Type);
         header("Location:MarksSetup/");   
        }
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="StudentAttendance")
{
	$SectionId=$_POST['SectionId'];
	header("Location:StudentAttendance/$SectionId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="AdmissionReport")
{
	$SectionId=$_POST['SectionId'];
	$StudentStatus=$_POST['StudentStatus'];
	$_SESSION['StudentStatus']=$StudentStatus;
	$LoginDetail=$_POST['LoginDetail'];
	$_SESSION['LoginDetail']=$LoginDetail;
	header("Location:AdmissionReport/$SectionId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="UpdateFee")
{
	$CurrentSectionId=$_POST['CurrentSectionId'];
	$Student=$_POST['Student'];
	header("Location:UpdateFee/$CurrentSectionId/$Student");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="StockTransfer")
{
	$StockType=$_POST['StockType'];
	$StockId=$_POST['StockId'];
	header("Location:StockTransfer/$StockType/$StockId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="IssueSchoolMaterial")
{
	$MaterialType=$_POST['MaterialType'];
	$AdmissionId=$_POST['AdmissionId'];
	header("Location:IssueSchoolMaterial/$MaterialType/$AdmissionId");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="StockReport")
{
	$AssignTo=$_POST['AssignTo'];
	$AssignToDetail=$_POST['AssignToDetail'];
	$StockDate=$_POST['StockDate'];
	header("Location:StockReport/$AssignTo/$StockDate/$AssignToDetail");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="SchoolMaterialReport")
{
	$MaterialType=$_POST['MaterialType'];
	$D=$_POST['D'];
	header("Location:SchoolMaterialReport/$MaterialType/$D");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="IssueReport")
{
	$FromDate=$_POST['FromDate'];
	$MaterialType=$_POST['MaterialType'];
	$ToDate=$_POST['ToDate'];
	header("Location:IssueReport/$MaterialType/$FromDate/$ToDate");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="PurchaseReport")
{
	$FromDate=$_POST['FromDate'];
	$ToDate=$_POST['ToDate'];
	header("Location:PurchaseReport/$FromDate/$ToDate");	
}
///////////////////////////////////////////////////////////////////////////////////////////
elseif($Action=="DashBoardReport")
{
	$REPORTDAYS=Escape($_POST['REPORTDAYS']);
	if($REPORTDAYS<=0 || !is_numeric($REPORTDAYS))
	{
		$Message="Day(s) should be numeric & greater than 1!!";
		$Type=error;
		SetNotification($Message,$Type);
	}
	else
	$_SESSION['REPORTDAYS']=$REPORTDAYS;
	header("Location:DashBoard");	
}


elseif($Action=="VoteheadReport")
{
?>
 <script  type="text/javascript" src="js/jquery1.8.js"></script>

  <script type="text/javascript" src="js/jquery-ui-1.10.3.js"></script>
     <script type="text/javascript" src="js/jquery.table2excel.js"></script>
<?php
  //\die(print_r($_POST));
	$date=$_POST['datevotehead'];
        
	$voteheadname=array();
          $voteheads=getVoteHeads($_POST["session"], $_POST["term"],$date);
         
          foreach ($voteheads as $value) {
              array_push($voteheadname, $value["votehead"]);
          }
         $uniquevoteheads=array_unique($voteheadname);
         $total=0;
         echo "<table border='1' cellpadding='1' width='100%' class='responsive export'>"
         . "<tr><td colspan='3'><center><b>Fee Payment/Votehead For ".$date."</b></center></td></tr>"
                 . "<tr><td>Votehead</td><td>Recpnos</td><td>Sub Total</td></tr>";
         foreach ($uniquevoteheads as $votehead) {
                          $payments=getFeeSumPerVotehead($votehead, $voteheads);
                          $total+=$payments["voteheadsum"];
            echo "<tr><td>".$votehead."</td><td>".$payments["voteheadrecpnos"]."</td><td>".$payments["voteheadsum"]."</td></tr>"; 
         }  
         echo "<tr><td></td><td><b>G.Total</b></td><td><b>".$total."</b></td></tr>";   
          echo "</table><hr>";
          echo  "<a href='#' class='exporta' style='float:right'>Export To Excel</a>";?>
<script type="text/javascript">
	$(document).ready(function() {
           $(".exporta").click(function(e){
              id=$(this).attr("id");
           $(".export").table2excel({
					//exclude: ".noExl",
					name: "Exported File",
					filename: "exportedList"
				});
                                });
        })
        </script>
       <?php   
	//header("Location:UpdateFee/$CurrentSectionId/$Student");	
}
///////////////////////////////////////////////////////////////////////////////////////////
else
header("location:DashBoard");
?>