<?php
$PageName="Registration";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("../../Include.php");
require("../config/database.php");
require("view.php");
require("Model.php");

if($ErrorMessage!=""){
	$Message=$ErrorMessage;
	$Type=error;
	SetNotification($Message,$Type);
	header("Location:ErrorPage");
	exit();
}
IsLoggedIn();
include("../../Template/HTML.php");
?>    
<?php
include("../../Template/Header.php");
?>

<?php
include("../../Template/Sidebar.php");
?>
<style>
    .bs-example{
        margin: 20px;
    }
    .accordion .fa{
        margin-right: 0.5rem;
    }
    .td{
        padding-right:10px !important;
    }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 

<?php 
        $db = new Database();
        $model = new Model($db->getConnection());
        $filterCoach = isset($_GET["coach"]) ? $_GET['coach'] : '';
        $filterdaterange = isset($_GET['daterange']) ? $_GET['daterange'] : '';
        $filtercenter = isset($_GET['center']) ? $_GET['center'] : '';
        if($filterCoach != null && $filterdaterange != null && $filtercenter!=null){
            $coachname = $model->queryWhere("SELECT UserId, fullname FROM vw_users WHERE Position = 'Coach' AND UserId = ".$filterCoach);
            $centername = $model->queryWhere("SELECT CenterId, CenterName FROM vw_centers WHERE CenterId = $filtercenter");
 
        }
       
        
?>
<div class="panel-body">    
 <div class="text-center" style="margin-top:40px;">
 <div>
    <form>


        <table>
            <tr>
                <td style="padding:10px !important;">
                <h4> <label for="Choose Report"  style="color:#E74C3C">Filter By Coach</label></h4>
                            <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-tasks"></span></span>
                            <select tabindex="1" name="coach" id="coach" class="nostyle" style="width:100%;" >
                                <option></option>
                                <?php echo ListCoaches(); ?>
                                </select>
                            
                            </div> 
                </td>
                <td style="padding:10px !important;">
                <h4> <label for="Choose Report"  style="color:#E74C3C">Filter By Date Range</label></h4>
                            <input  type="text" name="daterange" value="01/01/2020 - 12/01/2020" />
                </td>
                <td style="padding:10px !important;">
                <h4> <label for="Choose Report"  style="color:#E74C3C">Filter By Center</label></h4>
                            <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-tasks"></span></span>
                            <select tabindex="1" name="center" id="center" class="nostyle" style="width:100%;" >
                                <option></option>
                                <?php echo ListCachUpCenters(); ?>
                                </select>
                            </div> 
                </td>
                <td style="margin-top:10px padding:10px !important;">

                <button type="submit" value="submit" class="btn btn-success">Search <span class="fa fa-search"></span></button>                </td>
            </tr>
        </table>
    </form>
</div>
 <div style="width: 80%; height: 70%; overflow-y: scroll;">
 <?php
   


    //   echo "CoachID = ".$filterCoach. " Date range =".$filterdaterange. "Center =".$filtercenter; 


      $startdate = date("Y-m-d",strtotime(explode("-", $filterdaterange)[0]));
      $enddate = date("Y-m-d",strtotime(explode("-",$filterdaterange)[1]));



      if($filterCoach != null && $filterdaterange != null && $filtercenter!=null){
        $query = "SELECT *FROM vw_coach_inspection_report WHERE Center = $filtercenter AND coach_id = $filterCoach 
        AND  (VisitDate BETWEEN '".$startdate."'  AND '".$enddate."')";
        $dataum = $model->queryWhere($query);
        accordion($dataum);

      }
        //    _content($dataum);
    
  ?>
 </div>



</div>       
</div>
      
<script>
    $(function() {
    $('input[name="daterange"]').daterangepicker({
        opens: 'left'
    }, function(start, end, label) {
        console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
    });
    });
</script>  





<?php
include("Template/Footer.php");
?>
