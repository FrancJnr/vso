<?php
$PageName="Staffs";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../Include.php");
include("../config/database.php");
IsLoggedIn();
?> 
  

<?php
include("../../Template/HTML.php");
?>

<?php
include("../../Template/Header.php");
?>

<?php
include("../../Template/Sidebar.php");
?>
<style>
    body{
        background: #eee;
    }
    span{
        font-size:15px;
    }
    a{
        text-decoration:none; 
        color: #0062cc;
        border-bottom:2px solid #0062cc;
    }
    .box{
        padding:60px 0px;
    }

    .box-part{
        background:#FFF;
        border-radius:0;
        padding:30px 10px;
        margin:10px 0px;
    }
    .text{
        margin:20px 0px;
    }

    .fa{
        color:#4183D7;
    }
    .button {
        font: bold 11px Arial;
        text-decoration: none;
        background-color: #EEEEEE;
        color: #333333;
        padding: 2px 6px 2px 6px;
        border-top: 1px solid #CCCCCC;
        border-right: 1px solid #333333;
        border-bottom: 1px solid #333333;
        border-left: 1px solid #CCCCCC;
    }
</style>
<?php
_reports_start();
_report("fa fa-users fa-3x", "Admission Report", "Report detailing learners admitted to the program", "AdmissionReport.php");
_report("fa fa-history fa-3x", "Waiting List", "A Report of Learners waiting to be admitted to the program", "RegistrationReport.php");
_report("fa fa-bar-chart fa-3x", "Enrollment Per Center", "Report showing a graphical summary of Learners Per Catch Up center", "modules/Reports/registration-reports/enrollmentPerCenter.php");
_report("fa fa-bar-chart fa-3x", "Enrollment Per County", "Report showing a graphical summary of Learners Per County", "modules/Reports/registration-reports/enrollmentPerCounty.php");
_report("fa fa-bar-chart fa-3x", "Students Assigned to an EF", "Report showing a graphical summary of No of Students Assigned to an Educator Facilitator", "modules/Reports/registration-reports/enrollmentPerEf.php");
_report("fa fa-bar-chart fa-3x", "Ongoing Sessions", "Report showing a list of Active Sessions And Learners currently attending", "modules/Reports/session-reports/session-index.php");
_report("fa fa-bar-chart fa-3x", "Session Attendance", "Report showing a summary of students attendance", "modules/Reports/session-reports/session-index.php");
_report("fa fa-history fa-3x",   "Transitions", "Report showing a summary of students who have transited or requested to transit", "modules/StudentProgress/views/promotions.php");


_reports_end();

 function _reports_start(){
    echo '
    <div class="box">
      <div class="row">		 
';
 }
 function _reports_end(){
  echo '        			
           </div>		
       </div>';
}
function _report($icon, $title, $description, $link){
    echo '       
   <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
    <div class="box-part text-center">
        <i class="'.$icon.'" aria-hidden="true"></i>
        <div class="title">
          <h4>'.$title.'</h4>
        </div>
        <div class="text">
          <span>'.$description.'</span>
        </div>
        <a href="'.$link.'" class="button">Report</a>
        </div>
        </div>	 
    ';
}
?>
