<?php
$PageName="Registration";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
$TableRequired=1;
include("Include.php");
require("modules/Dashboard/data.php");
require("modules/config/database.php");
require("modules/Dashboard/dashboard-view.php");

if($ErrorMessage!=""){
	$Message=$ErrorMessage;
	$Type=error;
	SetNotification($Message,$Type);
	header("Location:ErrorPage");
	exit();
}
IsLoggedIn();
include("Template/HTML.php");
?>    
<?php
include("Template/Header.php");
?>

<?php
include("Template/Sidebar.php");
?>
<?php
      $db = new Database();
      $dashboard = new DashboardData($db->getConnection());

      $totalCenters = 0;
      $totalStudents = 0;
      $totalEf = 0;
      $totalCoach = 0;


      $totalCenters = $dashboard->queryWhere("SELECT COUNT(CenterId) AS id FROM `vw_centers` WHERE Status = 1;")['id'];
      $totalStudents = $dashboard->queryWhere("SELECT COUNT(RegistrationId) AS id FROM `vw_registrations` WHERE IsAdmitted = 1 AND IsDeleted = false;")['id'];
      $totalCoach = $dashboard->queryWhere("SELECT COUNT(id)  AS id FROM `vw_staffs`  WHERE Position = 'Coach' AND active = true;")['id'];
      $totalEf = $dashboard->queryWhere("SELECT COUNT(id)  AS id FROM `vw_staffs`  WHERE Position = 'Coach' AND active = true;")['id'];

      $NoOfStudentsPerCenter = $dashboard->queryAll("SELECT COUNT(RegistrationId) AS id, CenterName 
                                                        FROM `vw_registrations` 
                                                        WHERE IsAdmitted = 1 AND IsDeleted = false
                                                        GROUP BY CenterName;");

      $NoOfStudentsPerCounty = $dashboard->queryAll("SELECT COUNT(RegistrationId) AS id, County  
                                                        FROM `vw_registrations` 
                                                        WHERE IsAdmitted = 1 AND IsDeleted = false
                                                        GROUP BY County;");

      $attendancePerCenter = $dashboard->queryAll("SELECT total_attendance/COUNT(vw_attendance.AttendanceId) *100 AS percentage, a.CenterName
                                                          FROM(
                                                          SELECT COUNT(SessionId) total_attendance, vw_attendance.CenterName
                                                          FROM `vw_attendance` 
                                                          WHERE Present = true
                                                          GROUP BY CenterName) AS a 
                                                          INNER JOIN vw_attendance ON a.CenterName = vw_attendance.CenterName
                                                          GROUP BY total_attendance, a.CenterName
                                                          ORDER BY percentage
                                                          LIMIT 10;");
       $absenteePerCenter = $dashboard->queryAll("SELECT total_attendance/COUNT(vw_attendance.AttendanceId) *100 AS percentage, a.CenterName
                                                          FROM(
                                                          SELECT COUNT(SessionId) total_attendance, vw_attendance.CenterName
                                                          FROM `vw_attendance` 
                                                          WHERE Present = false
                                                          GROUP BY CenterName) AS a 
                                                          INNER JOIN vw_attendance ON a.CenterName = vw_attendance.CenterName
                                                          GROUP BY total_attendance, a.CenterName
                                                          ORDER BY percentage
                                                          LIMIT 10;");


      

     
 ?>
 <style>
    .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 5px;
    padding: 20px 10px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
    transition: .3s linear all;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  

  .card-counter.success{
    background-color: #66bb6a;
    color: #FFF;
  }  

  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }  

  .card-counter i{
    font-size: 5em;
    opacity: 0.2;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    font-style: italic;
    text-transform: capitalize;
    opacity: 0.5;
    display: block;
    font-size: 18px;
  }
 </style>
 <?php
_content();
_row();
_card("Active Centers", $totalCenters, "fas fa-chalkboard-teacher", "card-counter primary");
_card("Active Learners", $totalStudents, "fas fa-users", "card-counter danger");
_card("Total Educator Facilitators", $totalEf, "fas fa-user-edit", "card-counter info");
_card("Total Coachs", $totalCoach, "fas fa-user-tie", "card-counter success");
row_();
_row();
_bar_chart("graphCanvas");
_bar_chart("graphCanvas2");
row_();
_row();
_start_tile("Top Ten Centers By Attendance");
_tile($attendancePerCenter, "progress-bar bg-success");
close_tile_();
_start_tile("Top Ten Centers By Absentism");
_tile($absenteePerCenter, "progress-bar bg-danger");
close_tile_();
row_();
_row();
_map();
row_();

content_();
?> 
	<script type="text/javascript" src="js/Chart.min.js"></script>
  <script>
        $(document).ready(function () {
          var data = <?php echo json_encode($NoOfStudentsPerCenter); ?>;
          var data2 = <?php echo json_encode($NoOfStudentsPerCounty); ?>;

            showGraph(data, 'No of Students per Catchup Centers');
            showGraph2(data2, 'No of Students per County')
        });


        function showGraph(data, label){
                    var name = [];
                    var marks = [];
                    for (var i in data) {
                        name.push(data[i].CenterName);
                        marks.push(data[i].id);
                    }

                    var chartdata = {
                        labels: name,
                        datasets: [
                            {
                                label: label,
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: marks
                            }
                        ]
                    };

                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata
                    });
          }

          function showGraph2(data, label){
                    var name = [];
                    var marks = [];
                    for (var i in data) {
                        name.push(data[i].County);
                        marks.push(data[i].id);
                    }

                    var chartdata = {
                        labels: name,
                        datasets: [
                            {
                                label: label,
                                backgroundColor: '#2edb0f',
                                borderColor: '#2edb0f',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: marks
                            }
                        ]
                    };

                    var graphTarget = $("#graphCanvas2");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata
                    });
                }
            
            
       
        </script>
<script>
function myMap() {
var mapProp= {
  center:new google.maps.LatLng(51.508742,-0.120850),
  zoom:5,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsO2OoiQC8-Gfhynkz3zzSjNs8Nik5ALQ&callback=myMap"
    async defer></script>
<?php
include("Template/Footer.php");
?>
