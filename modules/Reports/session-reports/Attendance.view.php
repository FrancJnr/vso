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
    BarChart::create(array(
        "dataStore"=>$this->dataStore('Present'),
        "width"=>"50%",
        "height"=>"100px",
        "columns"=>array(
            "SessionId"=>array(
                "label"=>"SessionId"
            ),
            "CenterName"=>array(
                "label"=>"SessionId"
            ),
            "Present"=>array(
                "label"=>"Students Present"
            )
        ),
        "options"=>array(
            "title"=>"No of students per county",
        )
    ));
    ?>
    <?php
    Table::create(array(
        "dataStore"=>$this->dataStore('Present'),
            "columns"=>array(
                "SessionId"=>array(
                    "label"=>"SessionId"
                ),
                "CenterName"=>array(
                    "label"=>"SessionId"
                ),
                "Present"=>array(
                    "label"=>"Students Present"
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