<?php
// index.php: Just a bootstrap file
require_once "../vendor/autoload.php";

require_once "EfStudents.php";

$EfStudents = new EfStudents;
$EfStudents->run()->render();