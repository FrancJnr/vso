<?php

include 'Include.php';
include_once 'Function.php';
global $CONNECTION;
$RegistrationId=$_POST['RegistrationId'];
$query="UPDATE vs_cohorts set isDeleted= true   where ChohortId='$RegistrationId' ";
mysqli_query($CONNECTION,$query) or die(mysqli_error($CONNECTION));