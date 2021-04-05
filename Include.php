<?php
@session_start();
error_reporting(1);
set_time_limit(0);
$APPLICATIONNAME="Education Management";
$APPLCATIONSLOGAN="Login";
$DOMAIN=$_SERVER['HTTP_HOST'];
include("Config.php");
include("Function.php");
include("Validation.php");
if($DOMAIN=="localhost" && isset($PageName) && ($PageName=="Login" || $PageName=="DashBoard") )
include("Database.php");
if(!isset($SCHOOLNAME))
$SCHOOLNAME=$APPLICATIONNAME;
$PageKeywords="VSO";
$PageDescription="VSO Edu";
$PageAuthor="TechSavanna";
$ApplicationName="Software";
$CurrentPageURL=CurrentPageURL();
$CurrentPageURL=urlencode($CurrentPageURL);
$extension="wb";
$MAXRECORDS=60000;
$PHOTOPATH="Upload";
$TIMEZONE="Africa/Nairobi";
if(function_exists('date_default_timezone_set'))
date_default_timezone_set($TIMEZONE);
$Date=date("F j, Y, g:i a");
$DDMMYYYY=date("d-m-Y");
$IP=$_SERVER["REMOTE_ADDR"];
$ConfirmProceed=Confirmation();
$PRINTUNIT="cm";
$DEFAULTPRINTSIZE="21";
$ByPass=$AllowParents=$AllowStudent=0;
$SCHOOLSESSION=array();
if(isset($PageName))
{
	$PageNameArray=explode("-",$PageName);
	$PageName=$PageNameArray[0];
	if (in_array("Parents", $PageNameArray))
	$AllowParents=1;
	if (in_array("Student", $PageNameArray))
	$AllowStudent=1;
}

$DefaultPage=Array('DashBoard','Login','Logout','ChangePassword','Register');
if(isset($_SESSION['USERTYPE']) && $_SESSION['USERTYPE']=="MasterUser")
array_push($DefaultPage,'GeneralSetting');

foreach($DefaultPage as $kkk)
{
	if(isset($PageName) && $PageName==$kkk)
	$ByPass=1;
}

if(!isset($PageName))
$ByPass=1;


$USERTYPE=$USERNAME=$NAME=$USERTYPEID=$TOKEN=$USERACCOUNTTYPE=$CURRENTSESSION=$LANGUAGE=$CURRENCY="";
$ACCOUNTLIST=$LISTACCOUNT=$SelectAccount=$LISTALLACCOUNT=$LISTALLACCOUNTWITHOUTBALANCE="";
$SCHOOLSET='';
$CURRENCY="KES";
$_SESSION['CURRENCY']=$CURRENCY;
$CURRENCY=$_SESSION['CURRENCY'];
if(!isset($DatabaseError) && !isset($TableError))
{
	$LANGUAGE=isset($_SESSION['LANGUAGE']) ? $_SESSION['LANGUAGE'] : '';
	$query1="select Translation from translate where LanguageId='$LANGUAGE' ";
	$check1=mysqli_query($CONNECTION,$query1);	
	$row1=mysqli_fetch_array($check1);
	$_SESSION['TRANSLATION']=$row1['Translation'];
	if(Login())
	{
		$NAME=$_SESSION['NAME'];
		$USERNAME=$_SESSION['USERNAME'];
		$USERTYPE=$_SESSION['USERTYPE'];
		$USERTYPEID=$_SESSION['USERTYPEID'];
		$PASSWORD=$_SESSION['PASSWORD'];
		$TOKEN=isset($_SESSION['TOKEN']) ? $_SESSION['TOKEN'] : '';
		$USERACCOUNTTYPE=$_SESSION['USERACCOUNTTYPE'];
		$query1="Select * from generalsetting";
		echo $PASSWORD;
		$check1=mysqli_query($CONNECTION,$query1);
		$row1=mysqli_fetch_array($check1);
		$SCHOOLSET=mysqli_num_rows($check1);
		if($SCHOOLSET>0)
		{
			$SCHOOLNAME=$row1['SchoolName'];
			$CURRENTSESSION=$_SESSION['CURRENTSESSION'];//$row1['CurrentSession'];
                        $CURRENTTERM=$_SESSION['CURRENTTERM'];//$row1['current_term'];
//                        $_SESSION['CURRENTTERM']=$CURRENTTERM;
//			$_SESSION['CURRENTSESSION']=$CURRENTSESSION;
			$SCHOOLSTARTDATE=$row1['SchoolStartDate'];
                        
			$SCHOOLSTARTYEAR=date("Y",$SCHOOLSTARTDATE);
                        
//			$SCHOOLSTARTPREVIOUSYEAR=$SCHOOLSTARTYEAR-1;
//                        
//			$SCHOOLSTARTNEXTYEAR=$SCHOOLSTARTYEAR+1;
//                        
//                        die($SCHOOLSTARTYEAR.$SCHOOLSTARTNEXTYEAR);
                        
			$SCHOOLSTARTMONTH=date("n",$SCHOOLSTARTDATE);
			if($SCHOOLSTARTMONTH<=3){
			$SCHOOLSTARTSESSION="$SCHOOLSTARTPREVIOUSYEAR-$SCHOOLSTARTYEAR";
                      
                        }
			else
			$SCHOOLSTARTSESSION="$SCHOOLSTARTYEAR-$SCHOOLSTARTNEXTYEAR";
                        
			$SCHOOLSESSION[0]=$SCHOOLSTARTSESSION;
			$CURRENTYEAR=date("Y",strtotime($DDMMYYYY))+1;
			$CURRENTMONTH=date("n",strtotime($DDMMYYYY));			
			$k0=1;
                        
  $sessions=array(2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023);
                                            
                                            
 foreach ($sessions as $value) {
     $p0=($value)."-".($value+1);
     $SCHOOLSESSION[$k0]=$p0;
     $k0++;
 }
 $SCHOOLSESSION=array_unique($SCHOOLSESSION);
   //die(print_r($SCHOOLSESSION));
//			for($i0=$SCHOOLSTARTYEAR;$i0<=($CURRENTYEAR);$i0++)
//			{
//				$j0=$i0+1;
//				$p0="$i0-$j0";
//				$SCHOOLSESSION[$k0]=$p0;
//				$k0++;
//			}
//			$SCHOOLSESSION=array_unique($SCHOOLSESSION);
			$_SESSION['SCHOOLSESSION']=$SCHOOLSESSION;
			
			$SCHOOLSTARTDATENAME=date("d M Y",$SCHOOLSTARTDATE);
		}
                $session=$_SESSION['CURRENTSESSION'];
               
               // $query2="Select * from school_term WHERE session='$session'";
                 $query2="Select * from school_term";
             
                $res=mysqli_query($CONNECTION,$query2) or die(mysqli_error($CONNECTION));
                $sessionterms=array();
		while($row=mysqli_fetch_array( $res))
		{
                    array_push($sessionterms, $row['term']);
                }
                $SCHOOLTERMS=$sessionterms;
    
		$GetAccountId=isset($_GET['AccountId']) ? $_GET['AccountId'] : '';
		$queryAccount="select AccountId,AccountName,(OpeningBalance+AccountBalance) as TotalAccountBalance,ManagedBy from accounts 
			order by AccountName ";
		$checkAccount=mysqli_query($CONNECTION,$queryAccount);
		$countAccount=mysqli_num_rows($checkAccount);
		while($rowAccount=mysqli_fetch_array($checkAccount))
		{
			$SelectAccountId=$rowAccount['AccountId'];
			if($GetAccountId==$SelectAccountId)
			$SelectAccount="Selected";
			else
			$SelectAccount="";
			$SelectAccountName=$rowAccount['AccountName'];
			$SelectManagedBy=$rowAccount['ManagedBy'];
			$SelectTotalAccountBalance=round($rowAccount['TotalAccountBalance'],2);
			$LISTALLACCOUNT.="<option value=\"$SelectAccountId\" $SelectAccount>$SelectAccountName Balance : $SelectTotalAccountBalance KES</option>";
			$LISTALLACCOUNTWITHOUTBALANCE.="<option value=\"$SelectAccountId\" $SelectAccount>$SelectAccountName</option>";
			if($USERTYPEID==$SelectManagedBy  || $SelectManagedBy=="" || $USERTYPE=="MasterUser" || $USERTYPE=="Webmaster" || $USERTYPE=="FRONT OFFICE" )
			{
				$ACCOUNTLIST.="<li><b>$SelectAccountName : $SelectTotalAccountBalance $CURRENCY</b></li>";
				$LISTACCOUNT.="<option value=\"$SelectAccountId\" $SelectAccount>$SelectAccountName Balance : $SelectTotalAccountBalance KES</option>";
			}
		}
		
		$queryMasterEntry="select * from masterentry where MasterEntryStatus='Active'";
		$checkMasterEntry=mysqli_query($CONNECTION,$queryMasterEntry);
		while($rowMasterEntry=mysqli_fetch_array($checkMasterEntry))
		{
			$MasterEntryIdArray[]=$rowMasterEntry['MasterEntryId'];
			$MasterEntryNameArray[]=$rowMasterEntry['MasterEntryName'];
			$MasterEntryValueArray[]=$rowMasterEntry['MasterEntryValue'];
		}
	}
	if($SCHOOLSET==0 && $USERTYPE!="Webmaster" && $ByPass!=1)
	{
		$Message="Please save the school detail first before going to any other option!!";
		$Type="error";
		SetNotification($Message,$Type);
		header("location:GeneralSetting");
		exit();
	}
	if($CURRENTSESSION=="" && $SCHOOLSET==1 && $ByPass!=1)
	{
		$Message="Please choose session from header before going to other option!!";
		$Type="error";
		SetNotification($Message,$Type);
		header("location:DashBoard");
		exit();
	}

	if($USERTYPE!="MasterUser" && $USERTYPE!="Webmaster" && $ByPass!=1 && $USERTYPE!="FRONT OFFICE" )
	{
		$UserFound=0;
		$query00000="select PermissionString from permission where UserType='$USERTYPEID' ";
		$check00000=mysqli_query($CONNECTION,$query00000);
		$row00000=mysqli_fetch_array($check00000);
		$PermissionString=$row00000['PermissionString'];
		$PermissionString=explode(",",$PermissionString);
		$query00001="select PageNameId from pagename where PageName like '$PageName' ";
                
		$check00001=mysqli_query($CONNECTION,$query00001) or die(mysqli_error($CONNECTION));
		$row00001=mysqli_fetch_array($check00001);
		$PageNameId=$row00001['PageNameId'];
		foreach($PermissionString as $Permission)
		{
			if($Permission==$PageNameId)
			$UserFound++;
		}
		if($AllowParents==1 && $USERTYPEID==="Parents")
		$UserFound++;
		if($AllowStudent==1 && $USERTYPEID==="Student")
		$UserFound++;
		if($UserFound<=0)
		{
			$Message="You can not access \"$PageName\" Page!!";
			$Type="error";
			SetNotification($Message,$Type);
			header("location:DashBoard");
			exit();
		}
	}
	
}
?>
