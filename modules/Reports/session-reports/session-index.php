<?php
// index.php: Just a bootstrap file
require_once "../vendor/autoload.php";

require_once "Session.php";

$Session = new Session;
$Session->run()->render();