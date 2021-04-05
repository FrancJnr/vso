<?php
// index.php: Just a bootstrap file
require_once "../vendor/autoload.php";

require_once "County.php";

$county = new County;
$county->run()->render();