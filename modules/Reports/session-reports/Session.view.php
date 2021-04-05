<?php 
    use \koolreport\widgets\koolphp\Table;
    use \koolreport\widgets\google\BarChart;
?>

<div class="report-content container" >
    <div class="text-center">
        <h1>Active Sessions</h1>
        <p class="lead">A List Of Active Sessions</p>
        <a href="export.php" class="btn btn-primary">Download PDF</a>
    </div>

    <?php
    // BarChart::create(array(
    //     "dataStore"=>$this->dataStore('result'),
    //     "width"=>"100%",
    //     "height"=>"500px",
    //     "columns"=>array(
    //         "County"=>array(
    //             "label"=>"County Name"
    //         ),
    //         "students"=>array(
    //             "type"=>"number",
    //             "emphasis"=>true
    //         )
    //     ),
    //     "options"=>array(
    //         "title"=>"No of students per county",
    //     )
    // ));
    ?>
    <?php
    Table::create(array(
        "dataStore"=>$this->dataStore('activesessions'),
            "columns"=>array(
                "SessionId"=>array(
                    "label"=>"SessionId"
                ),
                "CenterName"=>array(
                    "label"=>"SessionId"
                ),
                "SessionDate"=>array(
                    "label"=>"Date"
                ),
                "StaffName"=>array(
                    "label"=>"Educator Facilitator"
                ),
                "StartTime"=>array(
                    "label"=>"StartTime"
                )
            ),
        "cssClass"=>array(
            "table"=>"table table-hover table-bordered"
        ),
        "paging"=>array(
            "pageSize"=>10,
            "pageIndex"=>0,
        ),
    ));
    ?>
</div>