<?php
require_once "Session.php";
$report = new Session;

$report->run()
->export('SessionPdf')
->pdf(array(
    "format"=>"A4",
    "orientation"=>"portrait",
    //"zoom"=>2
))
->toBrowser("sessions.pdf");