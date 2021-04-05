<?php


$html ='
 <style>
*{font-family:verdana; font-size:12px;}

table.fancied {  font-size:12px; background: white;    width:100%;  margin:0 auto;  margin-bottom:10px; margin-top:1px;}

table.fancied th, table.fancied td {    padding: 0.2em;  vertical-align:top}
table.fancied th {  background:#fff;  text-align: left;}

table.fancied tr:hover{background-color:#fff;}

table.fancy {  font-size:12px; background: whitesmoke;    width:100%;  margin:0 auto;  margin-bottom:10px; margin-top:10px;}

table.fancy th, table.fancy td {  border:1px silver solid;  padding: 0.2em;  vertical-align:top}
table.fancy th {  background:#fff;  text-align: left; }
table.fancy caption {  margin-left: inherit;  margin-right: inherit;}
table.fancy tr:hover{background-color:#ddd;}

.box{border:1px solid;width:8px;height:8px}
#chartdiv {
	width		: 100%;
	height		: 200px;
	font-size	: 11px;
}					
</style>   

<table >'.$htmldata.'</table>';


//==============================================================
//==============================================================
//==============================================================

include("../mpdf.php");

$mpdf=new mPDF(); 

$mpdf->WriteHTML($html);
$mpdf->Output();
exit;

//==============================================================
//==============================================================
//==============================================================


?>