<?php
function _content(){
    echo '<div id="content" class="clearfix">';

}
function _row(){
    echo '<div class="row">';
}
function row_(){
    echo '</div>';
}
function content_(){
    echo '</div>';
}

function _card($description, $number, $icon, $class){
    echo '<div class="col-md-3">
        <div class="'.$class.'">
        <i class="'.$icon.'"></i>
        <span class="count-numbers">'.$number.'</span>
        <span class="count-name">'.$description.'</span>
        </div>
    </div>';

}
function _bar_chart($canvasId){
    echo'
    <div style="position: relative; padding-top:50px; height:150px;" class="col-md-6">
        <div class="chart-container">
        <canvas id="'.$canvasId.'"></canvas>
        </div>
    </div>';
}
function _line_chart(){
    echo'
     <div style="padding-top:50px; height:150px;" class="col-md-6">
        <div id="chart-container">
        <canvas id="myBarChart"></canvas>
        </div>
    </div>';

}

function _start_tile($title){
    echo '
    <div style="position: relative; padding-top:300px; height:150px;" class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">'.$title.'</h6>
            </div>
        <div class="card-body">
';

}
function close_tile_(){
    echo '
         </div>
        </div>
    </div>
';

}
function _tile($data, $color){
    foreach($data as $center){

        echo ' 
        <h4 class="small font-weight-bold">'.$center['CenterName'].' <span class="float-right">'.$center['percentage'].'%</span></h4>
        <div class="progress mb-4">
          <div class="'.$color.'" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
        </div>    
    
    ';

    }
}
function _map(){
    echo '

    <div id="googleMap" style=" margin-top: 20%; width:100%; height:500px;"></div>
  
  ';
}




 ?>