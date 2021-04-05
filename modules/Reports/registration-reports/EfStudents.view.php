<?php 
    use \koolreport\widgets\koolphp\Table;
    use \koolreport\widgets\google\BarChart;
?>

<div class="report-content">
    <div class="text-center">
        <h1>Learners Per Educator Facilitator</h1>
        <p class="lead">A graphical contrast of learners Assigned to an Educator Facilitator</p>
    </div>

    <?php
    BarChart::create(array(
        "dataStore"=>$this->dataStore('result'),
        "width"=>"100%",
        "height"=>"500px",
        "columns"=>array(
            "EfName"=>array(
                "label"=>"Educator Facilitator"
            ),
            "students"=>array(
                "type"=>"number",
                "emphasis"=>true
            )
        ),
        "options"=>array(
            "title"=>"No of students per Educator Facilitator",
        )
    ));
    ?>
    <?php
    Table::create(array(
        "dataStore"=>$this->dataStore('result'),
            "columns"=>array(
                "EfName"=>array(
                    "label"=>"Educator Name"
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