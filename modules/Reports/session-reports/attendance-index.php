<?php
// index.php: Just a bootstrap file
require_once "../vendor/autoload.php";

require_once "Attendance.php";

$Session = new Session;
$Session->run()->render();