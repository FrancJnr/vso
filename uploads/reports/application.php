<?php 
include '../Include.php';
//include '../Function.php';
$regid=$_REQUEST["id"];
$checkedmale="";$checkedfemale="";
$studentdetails=  getAllStudentDetails($regid);
if($studentdetails["Gender"]==7){
    $checkedmale="checked='checked'";
}
elseif($studentdetails["Gender"]==8){
    
    $checkedfemale="checked='checked'";
}
$nationality=GetCategoryValueOfId($studentdetails["Caste"],"Nationality");

$language=GetCategoryValueOfId($studentdetails["Language"],"Language");

$admissiondetails=getStudentAdmissionDetails($regid);
  $studentinfo=getStudentInfo($regid);
  $studentmedical= getStudentMedicalInfo($regid);
  $Siblings=getSiblings($regid);
  foreach ($Siblings as $sibling) {
    $siblingnames.=$sibling["SName"].",";
}

$classid=  getClassFromSection($studentdetails["SectionId"]);
$classdetails=  getClassFromId($classid);
$sectiondetails=  getSectionFromId($studentdetails["SectionId"]);

$classidfirst=  getClassFromSection($studentdetails["FirstSection"]);
$classdetailsfirst=  getClassFromId($classidfirst);
$sectiondetailsfirst=  getSectionFromId($studentdetails["FirstSection"]);
?>
<body style="font-size:16px;font-family:verdana">
<style type="text/css">
	.pull-right{
		float:right;
	}
</style>

<span style="mso-ignore:vglayout;position:
relative;z-index:251658240"><span style="position:absolute;left:177px;
top:-41px;width:179px;height:56px">

</span></span>
<table width="85%"  cellpadding="0" cellspacing="0">
                <tbody><tr><td align="left">
                            <img src="son.png">
            </td>
  <td  align="right" valign="top" bgcolor="white" style="vertical-align:
  top;background:white"><!--[endif]--><!--[if !mso]--><span style="position:absolute;
  z-index:3">
  <table cellpadding="0" cellspacing="0" width="100%">
   <tbody><tr><td></td>
    <td><!--[endif]-->
  
    <div  style="padding: 3.6pt 7.2pt;" class="shape">
    <p class="MsoNormal"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-size:
    12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:gray">P.O.
    Box 735-00606, Nairobi, Kenya<o:p></o:p></span></p>
    <p class="MsoNormal"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-size:
    12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:gray">Mob.
    (0735) 324124 (0789)707871<o:p></o:p></span></p>
    <p class="MsoNormal"><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-size:
    12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:gray">office@schoolofthenations.org<o:p></o:p></span></p>
    <p class="MsoNormal"><b><span lang="EN-US" style="font-size:9.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
    mso-bidi-font-family:&quot;Times New Roman&quot;;color:gray">www.schoolofthenations.org<o:p></o:p></span></b></p>
    <p class="MsoNormal" align="right" style="text-align:right"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
    mso-bidi-font-family:&quot;Times New Roman&quot;;color:gray">&nbsp;<o:p></o:p></span></p>
    </div>
    <!--[if !mso]--></td>
   </tr>
  </tbody></table>
  </span><!--[endif]--><!--[if !mso & !vml]-->&nbsp;<!--[endif]--><!--[if !vml]--></td>
 </tr>
</tbody></table>

<!--[endif]--><b><span lang="EN-US" style="font-size:16.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333"><o:p></o:p></span></b><p></p>

<p class="MsoNormal"><b><span lang="EN-US" style="font-size:16.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333"><o:p>&nbsp;</o:p></span></b></p>

<br clear="ALL">

<p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:16.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Application for Admissions<o:p></o:p></span></b></p>

<p class="MsoNormal" align="center" style="text-align:center"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Please submit the completed form to the school
administrator, along with the application fee of Kshs. 5000/-<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white">About the
Student<o:p></o:p></span></b></p>

<p class="MsoNormal"><b><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;color:#333333">Students Full Name:<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["StudentName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u> <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang="EN-US" style="font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Surname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;First name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle
Name<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
                           &quot;Times New Roman&quot;;color:#333333">Applying to Year: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $classdetailsfirst["ClassName"].$sectiondetailsfirst["SectionName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age:
<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php $dob=$studentdetails["DOB"];
$age=datedifference($dob); echo $age;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Birth date: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=date("d-m-Y",$studentdetails["DOB"])?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u><o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Male&nbsp; <span style="border:solid windowtext 1.0pt;mso-border-alt:solid windowtext .5pt;
padding:0cm">&nbsp;&nbsp;<input type="checkbox" <?=$checkedmale?> name="malefemale[]"/>&nbsp;&nbsp;</span>&nbsp;&nbsp;Female <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .25pt;padding:0cm">&nbsp;&nbsp;<input type="checkbox" <?=$checkedfemale?> name="malefemale[]"/>&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nationality:
<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$nationality?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First language: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$language?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Siblings who have been/are/will be students at
School of the Nations: <u>&nbsp;&nbsp;<?=$siblingnames?>&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white">Parent
Information</span></b><span lang="EN-US" style="font-size:14.0pt;font-family:
&quot;Arial Rounded MT Bold&quot;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Father,s Name: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mother's Name: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherName"]?>&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Nationality: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$nationality?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nationality: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$nationality?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">P.O. Box <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["PresentAddress"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; P.O. Box <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["PermanentAddress"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Mobile No.: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherMobile"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile No.: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherMobile"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Email Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherEmail"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherEmail"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Employer: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherOrganization"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employer: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherOrganization"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Occupation: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherOccupation"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Occupation: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherOccupation"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Office Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherOfficePhone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Office Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["MotherOfficePhone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">With whom does the student live in Kenya? <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["KenyanGuardian"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>

<!---Emergency Contact----->

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white">Emergency Contact<o:p></o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Please provide a secondary contact <b>other than the parents</b>, in case of
emergency.<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Name: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Relationship: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyRelationship"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Physical Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyAddress"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </span></p>
        <p><br></p>
<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Home Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyPhone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Office Phone: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyOfficePhone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p><br></p>
<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Mobile: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyPhone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["EmergencyEmail"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>


<p></p>



<!-----information about child------->

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white">Information
about your child <o:p></o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">What are your child's strongest subjects? <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["strongest_subject"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">What are your child's most challenging
subjects? <u>&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["challenging_subjects"]?>&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Please provide details on the previous two
years of schooling.<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4;
tab-stops:list 18.0pt"><!--[if !supportLists]--><span lang="EN-US" style="font-family:
Arial;mso-fareast-font-family:Arial;color:#333333">1.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Name of school: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["previous_school1"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["addressschool1"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal" style="text-indent:18.0pt"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Grade(s)/Schooling
level: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["grade_school1"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dates: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["datesschool1"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4;
tab-stops:list 18.0pt"><!--[if !supportLists]--><span lang="EN-US" style="font-family:
Arial;mso-fareast-font-family:Arial;color:#333333">2.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Name of school: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["previous_school2"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["addressschool2"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal" style="margin-left:18.0pt"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Grade(s)/Schooling
level: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["grade_school2"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dates: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["datesschool2"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u><o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<?php
$concern=$studentinfo["teachers_concern"];
$tickyes="&nbsp;&nbsp;&nbsp;&nbsp;";$tickno="&nbsp;&nbsp;&nbsp;&nbsp;";
if($concern=="on"){$tickyes="X";} else{$tickno="X";}
?>
<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Have teachers expressed concerns about your
child's academic skills, emotional or behavioural needs? Yes&nbsp; <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .5pt;padding:0cm">&nbsp;<?=$tickyes?>&nbsp;</span>&nbsp;&nbsp;&nbsp;No <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .5pt;padding:0cm">&nbsp;<?=$tickno?>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If
yes, please explain <u><?=$studentinfo["teacher_concern_remarks"]?> </u>&nbsp;<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Has your child had testing or special classes
for the following? <o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">If yes to any of the below, please attach all
reports and copies of test results.<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">General Learning Difficulties: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["general_learning_difficulties"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Identified Learning Disabilities: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["identified_learning_difficulties"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Special Education Classes: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["special_education_classes"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>
<?php 
$concern=$studentinfo["behaviour"];
$tickyes="&nbsp;&nbsp;&nbsp;&nbsp;";$tickno="&nbsp;&nbsp;&nbsp;&nbsp;";
if($concern=="on"){$tickyes="X";} else{$tickno="X";}

?>
<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Has your child ever been suspended, expelled
or otherwise removed from school due to behavioral issues?&nbsp; Yes <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .5pt;padding:0cm">&nbsp;<?=$tickyes?>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .5pt;padding:0cm">&nbsp;<?=$tickno?>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;If yes, please explain: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["behaviour_remarks"]?>&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><b><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></b></p>

<p class="MsoNormal"><b><u><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Non
disclosure</span></u></b><b><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">: Non disclosure of the child's learning and developmental needs
will lead to withdrawal of the child’s vacancy in the school.&nbsp; Parents are therefore advised to disclose
medical, educational and developmental history.<o:p></o:p></span></b></p>

<p class="MsoNormal"><u><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentinfo["non_disclosure"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></u></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>



<!---SCHOOL FEE PAYMENT GUIDELINES--->

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white">School
Fee Payment Guidelines<o:p></o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:21.6pt;text-indent:-21.6pt;mso-list:l3 level1 lfo2;tab-stops:list 21.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">The school fee is to be
paid on or before the second Friday of each term.&nbsp; Failure to which students will be prohibited
from attending school.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:21.6pt;text-indent:-21.6pt;mso-list:l3 level1 lfo2;tab-stops:list 21.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Remission of school fees
is not made in cases of absence due to illness or any other cause.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:21.6pt;text-indent:-21.6pt;mso-list:l3 level1 lfo2;tab-stops:list 21.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Every notice of intention
to remove a child from the school must be made in writing and submitted to the
school, in order to provide notification before the beginning of the student’s
intended last term; otherwise payment of the next term’s fees will be required.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:21.6pt;text-indent:-21.6pt;mso-list:l3 level1 lfo2;tab-stops:list 21.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Parents who withdraw
their children at any time for leave or any other reason during the term are
liable for the full term's fees.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:21.6pt;text-indent:-21.6pt;mso-list:l3 level1 lfo2;tab-stops:list 21.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">An advance payment of
Kshs. 80,000.00 is required to secure a place for new students.&nbsp; This payment is non refundable if you do not
take up the place.<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">I have read and agree to abide by the school
fee payment guidelines outlined above.</span><span lang="EN-US" style="font-size:
8.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333"><o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:8.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:8.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Name of Parent or Guardian: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherName"].' / '.$studentdetails["MotherName"].' / '.$studentdetails["GuardianName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:8.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Signature of Parent or Guardian:</span><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"> <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></span><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">&nbsp;Date Of Application: </span><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
     mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=date("d-m-Y",$studentdetails["DOAcceptance"])?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>


<!----application statement---->

<p class="MsoNormal" style="background:#A0A0A0"><b><span lang="EN-US" style="font-size:14.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:white">Application Statement<o:p></o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">I hereby apply for admission to School of the
Nations in accordance with the terms, rules, and regulations outlined below, as
well as the attached student conduct guidelines. I declare that all the
information provided in this form is correct, and I understand and agree that:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">School of the Nations
reserves the right to refuse admission to any student who has been dismissed
from another school for academic, disciplinary, or other reasons.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Any student/parents
failing to disclose such a record at the time of enrollment may be subject to
expulsion.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Students expelled from
School of the Nations are not entitled to a refund of tuition fees.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">I will be responsible for
all charges including incidental expenses.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">No exemption, deduction,
or rebate from tuition charges will be made in case of temporary absence,
dismissal, or withdrawal from school.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">School privileges may be
denied for any reason deemed sufficient by the authorities of the school. <o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Should the school find it
necessary to close at any time during the school year due to reasons beyond its
control, the fees paid to the school is not eligible for refund.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">School of the Nations
believes in partnering with the parents for the holistic growth of the
student.&nbsp; Therefore it is <b>mandatory</b> for the parents to attend
family-building forums such as workshops, seminars etc<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:57.6pt;text-indent:-21.6pt;mso-list:l2 level1 lfo3;tab-stops:list 57.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;
mso-fareast-font-family:&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;
color:#333333">£<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">I understand that School
of the Nations is a Christian school whose foundation of instruction is based
on Biblical principles made practical to everyday learning.&nbsp; I have no objection to my child receiving
Christian instruction.</span><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:36.0pt"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Name of Parent or Guardian: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["FatherName"].' / '.$studentdetails["MotherName"].' / '.$studentdetails["GuardianName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">Signature of Parent or Guardian:</span><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"> <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></span><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">&nbsp;Date Of Application: </span><u><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=date("d-m-Y",$studentdetails["DOAcceptance"]);?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></u></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;">&nbsp;</span></p>

<p class="MsoNormal" align="left" style="text-align:left"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Thank
you for applying to School of the Nations! An appointment date for the entrance
interview and assessment will be communicated to you within two weeks of your
application submission. <o:p></o:p></span></p>



<p class="MsoNormal"><!--[if gte vml 1]><v:line id="_x0000_s1026" style='position:absolute;
 z-index:251656192' from="-36pt,3.85pt" to="747pt,3.85pt" strokecolor="#333"
 strokeweight="3pt">
 <v:stroke linestyle="thinThin"/>
</v:line><![endif]--><!--[if !vml]--><span style="mso-ignore:vglayout;position:
relative;z-index:251656192"><span style="position:absolute;left:-41px;
top:-251px;width:790px;height:7px"></span></span><!--[endif]--><b><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></b></p>

<br clear="ALL">
<br clear="ALL">
<br clear="ALL">

<p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">For Office Use Only<o:p></o:p></span></b></p>

<table class="MsoNormalTable" align="center" border="1" cellspacing="0" cellpadding="0" >
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:18.1pt">
  <td width="39" style="width:39.15pt;border:solid #333333 1.0pt;mso-border-alt:
  solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="right" style="text-align:right"><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;
  color:#333333"><o:p>&nbsp;</o:p></span></b></p>
  </td>
  <td width="125" style="width:125.25pt;border:solid #333333 1.0pt;border-left:
  none;mso-border-left-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:10.0pt;
  font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Application
  Received</span></b><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p></o:p></span></b></p>
  </td>
  <td width="125" style="width:125.25pt;border:solid #333333 1.0pt;border-left:
  none;mso-border-left-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:10.0pt;
  font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Admission
  Test Marks</span></b><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p></o:p></span></b></p>
  </td>
  <td width="125" style="width:125.25pt;border:solid #333333 1.0pt;border-left:
  none;mso-border-left-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:10.0pt;
  font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Records
  reviewed</span></b><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p></o:p></span></b></p>
  </td>
  <td width="125" style="width:125.3pt;border:solid #333333 1.0pt;border-left:
  none;mso-border-left-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:10.0pt;
  font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Acceptance
  date</span></b><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p></o:p></span></b></p>
  </td>
   <td width="125" style="width:125.3pt;border:solid #333333 1.0pt;border-left:
  none;mso-border-left-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.1pt">
  <p class="MsoNormal" align="center" style="text-align:center"><b><span lang="EN-US" style="font-size:10.0pt;
  font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Date Deposit Paid</span></b><b><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1;height:17.4pt">
  <td width="39" valign="top" style="width:39.15pt;border:solid #333333 1.0pt;
  border-top:none;mso-border-top-alt:solid #333333 .25pt;mso-border-alt:solid #333333 .25pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;font-family:Arial;
  mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Date</span><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;
  color:#333333"><o:p></o:p></span></p>
  </td>
  <td width="125" valign="top" style="width:125.25pt;border-top:none;border-left:
  none;border-bottom:solid #333333 1.0pt;border-right:solid #333333 1.0pt;
  mso-border-top-alt:solid #333333 .25pt;mso-border-left-alt:solid #333333 .25pt;
  mso-border-alt:solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;
  color:#333333"><o:p><?=date("d-m-Y",$studentdetails["DOR"])?></o:p></span></p>
  </td>
  <td width="125" valign="top" style="width:125.25pt;border-top:none;border-left:
  none;border-bottom:solid #333333 1.0pt;border-right:solid #333333 1.0pt;
  mso-border-top-alt:solid #333333 .25pt;mso-border-left-alt:solid #333333 .25pt;
  mso-border-alt:solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
  12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p>English:<?=($studentdetails["english"]+$studentdetails["english2"])?>&nbsp;Maths:<?=($studentdetails["maths"]+$studentdetails["maths2"])?>&nbsp;Science:<?=($studentdetails["science"]+$studentdetails["science2"])?></o:p></span></p>
  </td>
  <td width="125" valign="top" style="width:125.25pt;border-top:none;border-left:
  none;border-bottom:solid #333333 1.0pt;border-right:solid #333333 1.0pt;
  mso-border-top-alt:solid #333333 .25pt;mso-border-left-alt:solid #333333 .25pt;
  mso-border-alt:solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
  12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p><?=date("d-m-Y",$studentdetails["DORecords"])?></o:p></span></p>
  </td>
  <td width="125" valign="top" style="width:125.3pt;border-top:none;border-left:
  none;border-bottom:solid #333333 1.0pt;border-right:solid #333333 1.0pt;
  mso-border-top-alt:solid #333333 .25pt;mso-border-left-alt:solid #333333 .25pt;
  mso-border-alt:solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
  12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p><?=date("d-m-Y",$admissiondetails["DOA"])?></o:p></span></p>
  </td>
   <td width="125" valign="top" style="width:125.3pt;border-top:none;border-left:
  none;border-bottom:solid #333333 1.0pt;border-right:solid #333333 1.0pt;
  mso-border-top-alt:solid #333333 .25pt;mso-border-left-alt:solid #333333 .25pt;
  mso-border-alt:solid #333333 .25pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.4pt">
  <p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
  12.0pt;font-family:&quot;Arial Rounded MT Bold&quot;;color:#333333"><o:p><?=date("d-m-Y",$studentdetails["DateDepositPaid"])?></o:p></span></p>
  </td>
 </tr>

</tbody></table>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" align="center"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">School
        start date: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=date("d-m-Y",$admissiondetails["DOA"])?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;Year: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$classdetails["ClassName"].$sectiondetails["SectionName"]?>&nbsp;&nbsp;</u>&nbsp;&nbsp;&nbsp;&nbsp;Support Needed:<u><?=$studentdetails["SpecialRemarks"]?></u> <o:p></o:p></span></p>

<p></p>



<!--Medical Information-->

<h3 align="left" style="background: rgb(160, 160, 160);"><b><span lang="EN-US" style="font-size:14.0pt;font-family:Arial;mso-fareast-font-family:
Batang;mso-bidi-font-family:&quot;Times New Roman&quot;;color:white;mso-fareast-language:
KO">Student Medical Information Form<o:p></o:p></span></b></h3>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">The
school provides First Aid treatment during school hours and at the school
functions.&nbsp; It is vital, therefore, that
the school has up-to-date information about your child's health and medical
requirements.&nbsp; Please complete and return
this form as soon as possible and inform the school in writing of any changes
in circumstances.<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Name
        of the student: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentdetails["StudentName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php $sectionid=getStudentSection($regid); $studentclass=getClassDetailsFromSection($sectionid); $section=getSectionFromId($sectionid); echo $studentclass["ClassName"].$section["SectionName"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Date
of Birth: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=date("d-m-Y",$dob)?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blood 
group (if known): <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= GetCategoryValueOfId($studentdetails["BloodGroup"],"BloodGroup")?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></span><u><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333"><o:p></o:p></span></u></p>

<p class="MsoNormal"><span lang="EN-US" style="font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">&nbsp;</span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Medical
card (type and number): <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["medical_card"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Student’s
Doctor: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["doctor"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospital: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["hospital"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Phone:
<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["doctor_phone"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile:
<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["doctor_mobile"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></u></span></p>

<p class="MsoNormal"><u><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p><span style="text-decoration:none">&nbsp;</span></o:p></span></u></p>

<p class="MsoNormal" style="margin-left:31.5pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1;
tab-stops:list 31.5pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-fareast-font-family:
Arial;color:#333333">1.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Please attach proof of vaccination for polio, measles and
diphtheria - tetanus<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="margin-left:31.5pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1;
tab-stops:list 31.5pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-fareast-font-family:
Arial;color:#333333">2.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Allergies: Give details of all allergies (e.g. to foods,
medicines, antibiotics, nut allergy, bee stings, etc)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["allergies"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:13.5pt"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="margin-left:31.5pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1;
tab-stops:list 31.5pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-fareast-font-family:
Arial;color:#333333">3.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Medicines administered at School of the Nations:&nbsp; Please tick to indicate that you give
permission for any of the following to be used or given to your child at
school.<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:75.6pt;text-indent:-21.6pt;mso-list:l0 level2 lfo1;
tab-stops:list 75.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;mso-fareast-font-family:
&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;color:#333333"><input type="checkbox" value="calpol" <?php if($studentinfo['calpol']=="calpol"){echo 'checked="checked"';}?> name="calpol"><span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Calpol Syrup<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:75.6pt;text-indent:-21.6pt;mso-list:l0 level2 lfo1;
tab-stops:list 75.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;mso-fareast-font-family:
&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;color:#333333"><input type="checkbox" value="panadol_syrup" <?php if($studentinfo['panadol_syrup']=="panadol_syrup"){echo 'checked="checked"';}?> name="panadol_syrup"> <span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Panadol Syrup<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:75.6pt;text-indent:-21.6pt;mso-list:l0 level2 lfo1;
tab-stops:list 75.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;mso-fareast-font-family:
&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;color:#333333"><input type="checkbox" value="brufen" <?php if($studentinfo['brufen']=="brufen"){echo 'checked="checked"';}?> name="brufen"> <span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Brufen Syrup<o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:75.6pt;text-indent:-21.6pt;mso-list:l0 level2 lfo1;
tab-stops:list 75.6pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Wingdings 2&quot;;mso-fareast-font-family:
&quot;Wingdings 2&quot;;mso-bidi-font-family:&quot;Wingdings 2&quot;;color:#333333"><input type="checkbox" value="panadol_tablet" <?php if($studentinfo['panadol_tablets']=="panadol_tablet"){echo 'checked="checked"';}?> name="calpol"><span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp; </span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Panadol tablets<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<?php $rescueremedy=$studentmedical["rescueremedy"];
$tickyes="&nbsp;&nbsp;&nbsp;";$tickno="&nbsp;&nbsp;&nbsp;";
if($rescueremedy=="on"){$tickyes="X";} else{$tickno="X";}
?>
<p class="MsoNormal" style="margin-left:31.5pt"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333">In extreme cases and emergencies (e.g.
fractures and severe sprains), do you give permission for Rescue Remedy to be
given to your child?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YES <span style="border:solid #333333 1.0pt;mso-border-alt:solid #333333 .25pt;
padding:0cm">&nbsp;<?=$tickyes?>&nbsp;</span>&nbsp;&nbsp;NO <span style="border:solid #333333 1.0pt;
mso-border-alt:solid #333333 .25pt;padding:0cm">&nbsp;<?=$tickno?>&nbsp;</span>&nbsp; <o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="margin-left:31.5pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1;
tab-stops:list 31.5pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-fareast-font-family:
Arial;color:#333333">4.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Specify any physical limitations or chronic health problems
and/or medications.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["ChronicHealth"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:13.5pt"><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="margin-left:31.5pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1;
tab-stops:list 31.5pt"><!--[if !supportLists]--><span lang="EN-US" style="font-size:
11.0pt;mso-bidi-font-size:12.0pt;font-family:Arial;mso-fareast-font-family:
Arial;color:#333333">5.<span style="font-stretch: normal; font-size: 7pt; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:11.0pt;
mso-bidi-font-size:12.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Give details of any routine medications prescribed to your child
(medicine and the condition for which it is prescribed).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$studentmedical["routine_medications"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u><o:p></o:p></span></p>

<p class="MsoNormal"><b><i><u><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p><span style="text-decoration:none">&nbsp;</span></o:p></span></u></i></b></p>

<p class="MsoNormal"><b><i><u><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">SPECIAL NOTE<o:p></o:p></span></u></i></b></p>


<p class="MsoNormal"><b><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#333333">Utmost care is taken to ensure that all children are safe and
sound, however in case of injuries to the children the school will immediately
call the Red Cross Ambulance to give first aid then take the child to a
hospital of your choice.&nbsp; The school is
not liable for any children's injuries.&nbsp;
Please sign below to indicate that you have understood and agree to this</span></b><b><span lang="EN-US" style="font-size:10.0pt;
font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">.<o:p></o:p></span></b></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#333333">Signature of Parent or
Guardian: <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u>&nbsp;Date Of Application: <u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <?=date("d-m-Y",$studentdetails["DOAcceptance"])?> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</u></span><u><span lang="EN-US" style="font-size:11.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></u></p>

<!--EndFragment-->




</body>




