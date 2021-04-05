<?php
// index.php: Just a bootstrap file
require_once "../vendor/autoload.php";

require_once "Registration.php";

$Registration = new Registration;
$Registration->run()->render();