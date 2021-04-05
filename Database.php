<?php
include("Config.php");
$ErrorMessage=$ErrorType=$TableError=$DatabaseError=null;
if(!$CONNECTION)
{
$ErrorMessage="Database not found!! Please fix this error!!!! ". mysqli_connect_errno() . PHP_EOL;
$ErrorType=1;
$DatabaseError=1;
}


if($PageName=="Installer" && $DatabaseError!=1 && $TableError!=1 && $SecondaryTableError!=1)
header("Location:LogIn");
?>
