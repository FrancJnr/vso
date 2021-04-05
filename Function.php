<?php

function Login() {
    if (isset($_SESSION['Login']) && $_SESSION['Login'] == "1" && $_SESSION['USERNAME'] != "")
        return(1);
    else
        return(0);
}

function IsLoggedIn() {
    $Login = Login();
    if ($Login == 0) {
        $CURL = CurrentPageURL();
        $_SESSION['CURL'] = $CURL;
        $Message = "You need to log in to access this page!!";
        $Type = "error";
        SetNotification($Message, $Type);
        $_SESSION['NotLoggedIn'] = 1;
        header("Location:LogIn");
        exit();
    }
}

function SetGridActions($array, $view, $update, $delete ) {
    $actions = "";

    if($_SESSION['USERTYPE']=='MasterUser'){
        $actions = "<td class='actions'>
        <a href=$view/$array class='edit'><i style='font-size:15px;' class='fas fa-eye fa-xs'></i></a>
        <a href=$update/$array class='update'><i style='font-size:15px;' class='fas fa-pen fa-xs'></i></a>
        <a href=$delete/$array class='delete'><i style='font-size:15px;' class='fas fa-trash fa-xs'></i></a>

       
    </td> "; 
    echo $actions; 
    }else{
        $actions = "<td class='actions'>
        <a href=$view/$array class='edit'><i style='font-size:15px;' class='fas fa-eye fa-xs'></i></a>
        <a href=$update/$array class='update'><i style='font-size:15px;' class='fas fa-pen fa-xs'></i></a>

    </td> "; 

    }
 
} 

function SetNotification($Message, $Type) {
    $_SESSION['Alert'] = 1;
    $_SESSION['Message'] = $Message;
    $_SESSION['Type'] = $Type;
}
function ListCachUpCenters(){
    global $CONNECTION;
    $ListCenters="";
    $query="SELECT CenterName, County, CenterId
    FROM techsava_vso.vw_centers
    WHERE Status = 1";

    $check=mysqli_query($CONNECTION,$query);
    while($row3=mysqli_fetch_array($check)){
        $ComboCenterName=$row3['CenterName'];
        $ComboCenterId=$row3['CenterId'];
        
        $SelectedCenter="selected";
        $ListCenters.="<option value=\"$ComboCenterId\" $SelectedClass>$ComboCenterName</option>";
    }
    return $ListCenters;
}
function ListCohorts(){
    global $CONNECTION;
    $ListCohorts="";
    $query="SELECT CohortId, CohortTitle
    FROM vs_cohorts
    WHERE isDeleted = false";

    $check=mysqli_query($CONNECTION,$query);
    while($row3=mysqli_fetch_array($check)){
        $ComboCohortTitle=$row3['CohortTitle'];
        $ComboCohortId=$row3['CohortId'];
        
        $SelectedCenter="selected";
        $ListCohorts.="<option value=\"$ComboCohortId\" $SelectedClass>$ComboCohortTitle</option>";
    }
    return $ListCohorts;
}


function ListGender(){
    $ListGenders="";
    
        $SelectedGender="selected";
        $ListGenders.='<option value="MALE" selected>MALE</option>';
        $ListGenders.='<option value="FEMALE" selected>FEMALE</option>';

    
    return $ListGenders;
}
function ListEFs(){
    global $CONNECTION;
    $ListEfs="";
    $query="SELECT StaffId, StaffName 
    FROM staff
     WHERE StaffPosition = 59";

    $check=mysqli_query($CONNECTION,$query);
    while($row3=mysqli_fetch_array($check)){
        $ComboStaffName=$row3['StaffName'];
        $ComboStaffId=$row3['StaffId'];
        
        $SelectedCenter="selected";
        $ListEfs.="<option value=\"$ComboStaffId\" $SelectedClass>$ComboStaffName</option>";
    }
    return $ListEfs;
}
function ListCoaches(){
    global $CONNECTION;
    $ListCohorts="";
    $query="SELECT UserId, fullname
    FROM vw_users
    WHERE Position = 'Coach'";

    $check=mysqli_query($CONNECTION,$query);
    while($row3=mysqli_fetch_array($check)){
        $ComboCohortTitle=$row3['fullname'];
        $ComboCohortId=$row3['UserId'];
        
        $SelectedCenter="selected";
        $ListCohorts.="<option value=\"$ComboCohortId\" $SelectedClass>$ComboCohortTitle</option>";
    }
    return $ListCohorts;
}


function DisplayNotification() {
    if (isset($_SESSION['Alert']) && isset($_SESSION['Message']) && isset($_SESSION['Type'])) {
        $Message = $_SESSION['Message'];
        $Type = $_SESSION['Type'];
        echo "<div class=\"span10\">
		<div class=\"alert alert-$Type\">
			<button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
			<strong>$Message</strong>
		</div>
	</div><div class=clearfix></div>";
        unset($_SESSION['Alert']);
        unset($_SESSION['Message']);
        unset($_SESSION['Type']);
    }
}

//fees


//fee paid per term per fee type



function ShowNotification($Message, $Type) {
    echo "<div class=\"alert $Type\">
	<strong>$Message</strong>
	</div>";
}

function ActionButton($Content, $TabIndex, $name) {
    echo "<div class=\"form-row row-fluid\"><center>
<div class=\"span12\">
<button type=\"submit\" name=\"$name\" tabindex=\"$TabIndex\" class=\"btn btn-info\">$Content</button>
</div></center>
</div>
";
}

function Translate($Phrase) {
    $PhrasePassed = "";
    if (!is_numeric($Phrase)) {
        $PhrasePassed = 1;
        $PhraseArray = explode(",", $_SESSION['PHRASE']);
        $PhraseIdArray = explode(",", $_SESSION['PHRASEID']);
        $PhraseSearch = array_search($Phrase, $PhraseArray);
        if ($PhraseSearch === FALSE)
            $PhraseId = "";
        else
            $PhraseId = $PhraseIdArray[$PhraseSearch];
    } else
        $PhraseId = $Phrase;
    $Found = "";
    $Translation = $_SESSION['TRANSLATION'];
    if ($Translation != "")
        $Translation = explode("||", $Translation);
    if ($Translation != "")
        foreach ($Translation as $TranslationValue) {
            $TP = explode("**", $TranslationValue);
            if ($TP[0] == $PhraseId) {
                $Found = 1;
                if (($TP[1] == "" && is_numeric($Phrase)) || $TP[1] != "")
                    return($TP[1]);
                else
                    return($Phrase);
                break;
            }
        }

    if ($Found != 1 && $PhrasePassed == 1)
        return($Phrase);
}

function ActionConfirm($Msg) {
    $Return = "onclick=\"javascript:return confirm('$Msg')\"";
    return($Return);
}

function SetButton($ButtonContent) {
    echo "<div class=\"form-row row-fluid\">
	<div class=\"span4\"></div>
	<div class=\"span8\">
	   <button type=\"submit\" class=\"btn btn-info\">$ButtonContent</button>
	</div>
</div>";
}

function SetDeleteButton($TabIndex) {
    $Confirm = Confirmation();
    echo "<div class=\"form-row row-fluid\">
	<div class=\"span4\"></div>
	<div class=\"span8\">
	   <button tabindex=\"$TabIndex\" type=\"submit\" class=\"btn btn-danger\" $Confirm>Delete</button>
	</div>
</div>";
}

function BreadCumb($BreadCumb) {
    echo "<div class=\"heading\">
	<h3>$BreadCumb</h3> ";
    $CURRENTSESSION = isset($_SESSION['CURRENTSESSION']) ? $_SESSION['CURRENTSESSION'] : '';
    // $CSession = Translate('Year');
    if ($CURRENTSESSION != "")
        // echo "<div style=\"float:right; margin-right:10px; font-size: 18px;line-height: 27px; font-weight:bold; padding-top:10px;\"> $CSession : $CURRENTSESSION </div>";
    echo "</div>";
}

function Calculate($mathString) {
    $mathString = trim($mathString);
    $mathString = ereg_replace('[^0-9\+-\*\/\(\) ]', '', $mathString);
    $compute = create_function("", "return (" . $mathString . ");");
    return 0 + $compute();
}

function Confirmation() {
    $Confirm = "onclick=\"javascript:return confirm('Are you sure you want to proceed???')\"";
    return($Confirm);
}


//age from DOB

function dateDifference($date) {

    $from = new \DateTime(date("Y-m-d", $date));

    $to = new \DateTime('today');

    $age = $from->diff($to)->y;
    return $age;
}


function GetCategoryValue($Name, $FieldName, $DefaultValue, $Ajx, $AjaxField, $AjaxFieldTxt, $Readonly, $TabIndex, $Multiple) {
    global $CONNECTION;
    $FieldNameId = $FieldName;
    if ($Multiple == 1) {
        $Multiple = "multiple=\"multiple\"";
        $FieldName.="[]";
    }
    if ($Ajx == 1)
        echo "<select tabindex=$TabIndex name=$FieldName onchange=\"showdetail(this.value,'$AjaxField','$AjaxFieldTxt')\" required id=$FieldNameId class=\"nostyle\" \"$Readonly\" style=\"width:100%;\" $Multiple>";
    else
        echo "<select tabindex=$TabIndex name=$FieldName id=$FieldNameId class=\"nostyle\" $Readonly style=\"width:100%;\" $Multiple>";
    if ($Multiple == "")
        echo "<option></option>";
    echo $Name;
    $check = mysqli_query($CONNECTION, "select * from masterentry where MasterEntryName='$Name' and MasterEntryStatus='Active' order by MasterEntryValue");
    while ($row = mysqli_fetch_array($check)) {
        $MasterEntryId = $row['MasterEntryId'];
        $MasterEntryValue = $row['MasterEntryValue'];
        if ($Multiple == "") {
            if ($DefaultValue == $MasterEntryId)
                $selected = "selected";
            else
                $selected = "";
        }
        else {
            $selected = "";
            foreach ($DefaultValue as $kk) {
                if ($kk == $MasterEntryId) {
                    $selected = "selected";
                    break;
                }
            }
        }
        echo "<option value=$MasterEntryId $selected>$MasterEntryValue</option>";
    }
    echo "</select>";
}

function CheckDateFormat($date) {
    if (preg_match("/^([0-9]{2})-([0-9]{2})-([0-9]{4})$/", $date, $parts)) {
        if (checkdate($parts[2], $parts[1], $parts[3]))
            return true;
        else
            return false;
    } else
        return false;
}

function MonthDifference($startDate, $endDate) {
    $startDate = date("Y-m-d", $startDate);
    $endDate = date("Y-m-d", $endDate);
    $retval = "";
    $splitStart = explode('-', $startDate);
    $splitEnd = explode('-', $endDate);

    if (is_array($splitStart) && is_array($splitEnd)) {
        $difYears = $splitEnd[0] - $splitStart[0];
        $difMonths = $splitEnd[1] - $splitStart[1];
        $difDays = $splitEnd[2] - $splitStart[2];

        $retval = ($difDays > 0) ? $difMonths : $difMonths - 1;
        $retval += $difYears * 12;
    }
    return $retval;
}

function GetDateFormat($Date) {
    if ($Date != "") {
        $TimeCheck = date("h:ia", $Date);
        $DateAll = date("d M Y,h:ia", $Date);
        $Date = date("d M Y", $Date);
        if ($TimeCheck == "12:00am")
            return($Date);
        else
            return($DateAll);
    } else
        return;
}

function yyyyMMddtoddMMyyyy($d) {
    $yy = substr($d, 0, 4);
    $mm = substr($d, 5, 2);
    $dd = substr($d, 8, 2);
    $ed = $dd . "-" . $mm . "-" . $yy;
    return($ed);
}

function ddMMyyyytoyyyyMMdd($d) {
    $dd = substr($d, 0, 2);
    $mm = substr($d, 3, 2);
    $yy = substr($d, 6, 4);
    $ed = $yy . "-" . $mm . "-" . $dd;
    return($ed);
}



function br2nl($string) {
    return preg_replace('/\<br(\s*)?\/?\>/i', "", $string);
}

function mynl2br($string) {
    $string = str_replace("'", "&#039;", $string);
    $string = nl2br($string);
    return($string);
}

function MakeSeed() {
    list($usec, $sec) = explode(' ', microtime());
    return (float) $sec + ((float) $usec * 100000);
}

function PasswordGenerator($c) {

srand(MakeSeed());
$password_length = $c;
$m=0;
$alfa = "1234567890QWERTYUIOPASDFGHJKLZXCVBNMabcdefghijklmnopqrstuvwxyz";
$token = "";
for($i = 0; $i < $password_length; $i ++) {
 $m=rand(0, strlen($alfa));
 if(isset($alfa[$m]))
 $token .= $alfa[$m];
}
    $token = rand(100, 100000);

    return($token);
}

function CurrentPageURL() {
    $pageURL = 'http';
    if (isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] == "on") {
        $pageURL .= "s";
    }
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "80") {
        $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
    } else {
        $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
    }
    return $pageURL;
}

function GetMAC() {
    ob_start();
    system("ipconfig /all");
    $cominfo = ob_get_contents();
    ob_clean();
    $search = "Physical";
    $primarymac = strpos($cominfo, $search);
    $mac = substr($cominfo, ($primarymac + 36), 17);
    $mac = PREG_REPLACE("/[^0-9a-zA-Z]/i", '', $mac);
    $mac = strrev($mac);
    $mac = substr($mac, 0, 4);
    return($mac);
}

function CopyDirectory($source, $destination) {
    if (is_dir($source)) {
        @mkdir($destination);
        $directory = dir($source);
        while (FALSE !== ( $readdirectory = $directory->read() )) {
            if ($readdirectory == '.' || $readdirectory == '..') {
                continue;
            }
            $PathDir = $source . '/' . $readdirectory;
            if (is_dir($PathDir)) {
                CopyDirectory($PathDir, $destination . '/' . $readdirectory);
                continue;
            }
            copy($PathDir, $destination . '/' . $readdirectory);
        }

        $directory->close();
    } else {
        copy($source, $destination);
    }
}

function Escape($array) {
    global $CONNECTION;
    if (is_array($array)) {
        foreach ($array as $key => $value) {
            if (is_array($array[$key]))
                $array[$key] = $this->filterParameters($array[$key]);

            if (is_string($array[$key]))
                $array[$key] = mysqli_real_escape_string($array[$key]);
        }
    }
    if (is_string($array))
        $array = mysqli_real_escape_string($CONNECTION, $array);
    return $array;
}

function GetRandomColor() {
    $rand = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
    $color = '#' . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)];
    return($color);
}


//get gender
function getGender($gender) {
    if ($gender == "7") {
        return "M";
    } else if ($gender == "8") {
        return "F";
    } else {
        return $gender;
    }
}

//get staff
function getStaffById($staffid) {
    global $CONNECTION;
    $q = "Select StaffName from staff where StaffId='$staffid' ";

    $result = mysqli_query($CONNECTION, $q) or die(mysqli_error($CONNECTION));
    while ($row1 = mysqli_fetch_array($result)) {

        $staffname = $row1["StaffName"];
    }

    return $staffname;
}




function checkAllowedUser($usertype){
    $allowedtochangeterm=array(0,49,255);
    if(in_array($usertype, $allowedtochangeterm)){
        return TRUE;
    }
 else {
        return FALSE;    
    }
}



