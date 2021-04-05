<?php
function _content($dataum){
  echo '<div class="bs-example">
  <div class="accordion" id="accordionExample">';
  foreach($dataum as $data){

    $image_name = $data['CenterName']."-".$data['id'].".png";
    file_put_contents('./images/'.$image_name, base64_decode($data['Image']));
    $image_url = "modules/coachVisit/images/".$image_name; 
      echo '

            <div class="card">
                <div class="card-header" id="'.$data['CenterName'].$data['id'].'">
                    <h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#'.$data['CenterName'].'"><i class="fa fa-plus"></i>'.$data['CenterName']." ". $data['VisitDate'].'</button>
                    </h2>
                </div>
                <div id="'.$data['CenterName'].'" class="collapse show" aria-labelledby="'.$data['CenterName'].'" data-parent="#accordionExample">
                    <div class="card-body">
                    <div class="panel panel-default">
                      <div class="d-inline-flex p-2">
                         <h4 style="padding-right:10px;"> <label style="color:#E74C3C; " for="Total">Student Present :</label>'.$data['LearnersPresent'].'</h4> 
                         <h4> <label style="color:#E74C3C" for="Total">Student Absent :</label>'.$data['LearnersAbsent'].'</h4> 
                      </div>
                         <div class="panel-heading">Visit Observations And Recommendations</div>

                      <div class="panel-body">
                        <table class="table table-striped">
                        
                        <thead>
                                <tr>
                                <th>Title</th>
                                <th>Observation</th>
                                <th>Suggestion</th>
                                </tr>
                        </thead>
                            ';
                            $observations = json_decode($data['Inspections']);

                            foreach($observations as $observation){
                                echo '<tr>';
                                echo '<td>'.$observation->Title .'</td>';
                                echo '<td>'. $observation->Observation.'</td>';
                                echo '<td>'. $observation->Suggestion. '</td>';
                                echo  '</tr>';
                        
                               }

                            
                            '<tr>';
                               echo '<td> <img src="'.$image_url .'"style="width:400px; height:300px"> <td>      
                            </tr>';

                        '</table>
                      </div>
                    </div>
                    </div>
                </div>
            </div>

      
      ';
      echo '        </div>
      </div>';
  
}
}
function accordion($dataum){
 $html = '<div class="panel-group" id="accordion">';
foreach($dataum as $data){
  $image_name = $data['CenterName']."-".$data['id'].".png";
  file_put_contents('./images/'.$image_name, base64_decode($data['Image']));
  $image_url = "modules/coachVisit/images/".$image_name; 
  $html .='
 <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#'.$data['CenterName'].$data['id'].'">
          '.$data['CenterName']."-".$data['VisitDate'].'</a>
        </h4>
      </div>
      <div id="'.$data['CenterName'].$data['id'].'" class="panel-collapse collapse">
          <div class="panel-body">
            <div class="d-inline-flex p-2">
            <h4 style="padding-right:10px;"> <label style="color:#E74C3C; " for="Total">Student Present :</label>'.$data['LearnersPresent'].'</h4> 
            <h4> <label style="color:#E74C3C" for="Total">Student Absent :</label>'.$data['LearnersAbsent'].'</h4> 
          </div>
            <table class="table table-striped">
            <thead>
              <tr>
                <th>Title</th>
                <th>Observation</th>
                <th>Suggestion</th>
              </tr>
            </thead>';
                $observations = json_decode($data['Inspections']);

              foreach($observations as $observation){
                  $html.= '<tr>';
                  $html.= '<td>'.$observation->Title .'</td>';
                  $html.= '<td>'. $observation->Observation.'</td>';
                  $html.= '<td>'. $observation->Suggestion. '</td>';
                  $html.=  '</tr>';
          
                }
            $html.='<tr>
                <td> <img src="'.$image_url .'"style="width:400px; height:300px"> <td>      
             </tr>';
              
          $html.=  ' </table>
          </div>

      </div>
    
</div> 
';

}
$html .='</div>';
 
echo $html;


       
}

 ?>
<!-- 
<table class="table table-striped">
          
          <thead>
                  <tr>
                  <th>Title</th>
                  <th>Observation</th>
                  <th>Suggestion</th>
                  </tr>
          </thead>
              ';
              $observations = json_decode($data['Inspections']);

              foreach($observations as $observation){
                  echo '<tr>';
                  echo '<td>'.$observation->Title .'</td>';
                  echo '<td>'. $observation->Observation.'</td>';
                  echo '<td>'. $observation->Suggestion. '</td>';
                  echo  '</tr>';
          
                }

              
              '<tr>';
                echo '<td> <img src="'.$image_url .'"style="width:400px; height:300px"> <td>      
              </tr>';

          '</table>
    -->