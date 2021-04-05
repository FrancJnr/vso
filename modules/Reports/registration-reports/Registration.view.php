<?php 
    use \koolreport\widgets\koolphp\Table;
    use \koolreport\widgets\google\BarChart;
?>

<div class="report-content">
    <div class="text-center">
        <h1>Enrollment Per Catch up center</h1>
        <p class="lead">A graphical contrast of learners enrolled per each center</p>
    </div>

    <?php
    BarChart::create(array(
        "dataStore"=>$this->dataStore('result'),
        "width"=>"100%",
        "height"=>"500px",
        "columns"=>array(
            "CenterName"=>array(
                "label"=>"Center Name"
            ),
            "students"=>array(
                "type"=>"number",
                "emphasis"=>true
            )
        ),
        "options"=>array(
            "title"=>"Registrations",
        )
    ));
    ?>
    <?php
    Table::create(array(
        "dataStore"=>$this->dataStore('result'),
            "columns"=>array(
                "CenterName"=>array(
                    "label"=>"Center Name"
                ),
                "students"=>array(
                    "type"=>"number"
                )
            ),
        "cssClass"=>array(
            "table"=>"table table-hover table-bordered"
        )
    ));
    ?>
</div>