<?php
$PageName="Login";
$FormRequired=1;
$TooltipRequired=1;
$SearchRequired=1;
include("Include.php");
if($ErrorMessage!="")
{}
else
{
	$Login=Login();
	if($Login==1)
	header("Location:DashBoard.php");
	
	$ParentsLogin=$StudentsLogin=0;
	$loginBtn=isset($_POST['loginBtn']) ? $_POST['loginBtn'] : '';
	$Username=isset($_POST['username']) ? $_POST['username'] : '';
	$Password=isset($_POST['password']) ? $_POST['password'] : '';
	$term=isset($_POST['term']) ? $_POST['term'] : '';
	$session = '2016-2017';
            // $session=isset($_POST['session']) ? $_POST['session'] : '';
			
	$IsParent=strpos($Username,'@parents');
	$IsStudent=strpos($Username,'@student');
	
	if($Username!="webmaster" && $Username!="masteruser" && $IsParent===FALSE && $IsStudent===FALSE)
	{
	$Password=md5($Password);
	$query="select StaffStatus,UserId,StaffName,user.StaffId,MasterEntryValue,Password,UserType from user,masterentry,staff where 
			user.UserType=masterentry.MasterEntryId and 
			user.StaffId=staff.StaffId and 
			Username='$Username' and 
			Password='$Password' ";
	}
	elseif($IsParent)
	{
	$ParentsLogin=1;
	$ParentUsernameArray=explode('@',$Username);
	$ParentUsername=$ParentUsernameArray[0];
	$query="select FatherName,StudentName,Status,ParentsPassword as Password from registration,admission,studentfee where
		registration.RegistrationId=admission.RegistrationId and
		admission.AdmissionId=studentfee.AdmissionId and
		admission.AdmissionId='$ParentUsername' and ParentsPassword='$Password' ";
	}
	elseif($IsStudent)
	{
	$StudentsLogin=1;
	$StudentUsernameArray=explode('@',$Username);
	$StudentUsername=$StudentUsernameArray[0];
	$query="select FatherName,StudentName,Status,StudentsPassword as Password from registration,admission,studentfee where
		registration.RegistrationId=admission.RegistrationId and
		admission.AdmissionId=studentfee.AdmissionId and
		admission.AdmissionId='$StudentUsername' and StudentsPassword='$Password' ";
	}
	else
	{
	$Password=md5($Password);
	$query="select UserId,Password,StaffId from user where 
			Username='$Username' and 
			Password='$Password' ";
	}
	$check=mysqli_query($CONNECTION,$query);
	$count=mysqli_num_rows($check);

	if(isset($_SESSION['LogOut']))
	{
		$Set=1;
		unset($_SESSION['LogOut']);
	}
	elseif(isset($_SESSION['NotLoggedIn']))
	{
		$Set=1;
		unset($_SESSION['NotLoggedIn']);
	}
	elseif(isset($_SESSION['Install']))
	{
		$Set=1;
		unset($_SESSION['Install']);
	}
	elseif(!isset($loginBtn))
	{
		$Message="Please enter Username & Password!!";
		$Type="info";
	}
	elseif($Username=="" || $Password=="")
	{
		$Message="Username & Password is mandatory!!";
		$Type="error";
	}
	elseif($count==0)
	{
		$Message="Wrong Username or Password!!";
		$Type="error";
	}
	else
	{
		$row=mysqli_fetch_array($check);
		$Password=$row['Password'];
		if(isset($row['StaffName']))
		{
			$Name=$row['StaffName'];
			$StaffStatus=isset($row['StaffStatus']) ? $row['StaffStatus'] : '';
		}
		if(!isset($Name))
		$Name=$Username;
		if($ParentsLogin==1 || $StudentsLogin==1)
		{
			$StudentStatus=$row['Status'];
			if($StudentsLogin==1)
			$Name=$row['StudentName'];
			if($ParentsLogin==1)
			$Name=$row['FatherName'];
		}
		if(($ParentsLogin==1 || $StudentsLogin==1) && $StudentStatus!='Studying')
		{
			$Message="$StudentName is currently not studying, You cannot login!!";
			$Type="error";
		}
		elseif(isset($StaffStatus) && $StaffStatus!="Active" && $Username!='webmaster' && $Username!='masteruser')
		{
			$Message="$Name, you are not allowed to login!! Please contact administrator!!";
			$Type="error";	
		}
		else
		{
		if($Username=="webmaster")
		{
		$UserType="Webmaster";
		$UserTypeId=0;
		}
		elseif($Username=="masteruser")
		{
		$UserType="MasterUser";
		$UserTypeId=0;
		}
		elseif($ParentsLogin==1)
		{
		$UserType="Parents";
		$UserTypeId="Parents";
		}
		elseif($StudentsLogin==1)
		{
		$UserType="Student";
		$UserTypeId="Student";
		}
		if($UserType=="")
		{
		$UserTypeId=$row['UserType'];
		$UserType=$row['MasterEntryValue'];
		}
		$Message="Logged in Successful!!";
		$Type="success";
		$_SESSION['Login']=1;
		$_SESSION['USERTYPEID']=$UserTypeId;
		$_SESSION['PASSWORD']=$Password;
		$_SESSION['USERTYPE']=$UserType;
		$_SESSION['USERNAME']=$Username;
                $_SESSION['StaffId']=$row["StaffId"];
		$_SESSION['NAME']=$Name;
		$_SESSION['USERACCOUNTTYPE']=$UserAccountType;
		$_SESSION['JustLogin']=1;
		$_SESSION['TOKEN']=PasswordGenerator(50,"recpno");
                //term and session
                $_SESSION['CURRENTSESSION']=$session;
                $_SESSION['CURRENTTERM']=$term;
                
		SetNotification($Message,$Type);
		if($_SESSION['CURL']!='')
		{
			$CURL=$_SESSION['CURL'];
			header("Location:$CURL");	
			unset($_SESSION['CURL']);
		}
		else	
		header("Location:DashBoard.php");
		exit();
		}
	}
}
if(!isset($Set))
SetNotification($Message,$Type);

include("Template/HTML.php");
?>      
    <body class="loginPage">
    <div class="container-fluid">
        <div id="header">
            <div class="row-fluid">
                <div class="navbar">
                    <div class="navbar-inner">
                      <div class="container">
                            <a class="brand" href="DashBoard.php"><?php echo ("Education For Life Project"); ?> <span class="slogan"><?php ?></span></a>
                      </div>
                    </div>
                  </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
	<br><br><br><br>
	<div style="margin-left:20%; margin-right:50%">
	<center>
	<?php echo DisplayNotification();  ?>
	</center>
	</div>

	<?php
	if($ErrorMessage=="")
	{
	?>
        <div class="loginContainer">
            <form class="form-horizontal" action="" id="loginForm" method="post" action="">
                <div class="form-row row-fluid">
                    <div class="span12">
                        <div class="row-fluid">
                            <label class="form-label span12 mandatory" for="username">
                                Enter your username:
                                <span class="icon16 icomoon-icon-user-3 right gray marginR10"></span>
                            </label>
                            <input tabindex="1" class="span12" id="username" type="text" name="username" placeholder="Username" value="" />
                        </div>
                    </div>
                </div>
                <div class="form-row row-fluid">
                    <div class="span12">
                        <div class="row-fluid">
                            <label class="form-label span12 mandatory" for="password" />
                                Enter your password:
                                <span class="icon16 icomoon-icon-locked right gray marginR10"></span>
                            </label>
                            <input tabindex="2" class="span12" id="password" type="password" name="password" placeholder="Password" value="" />
                        </div>
                    </div>
                </div>
                  <div class="form-row row-fluid">
                    <div class="span12">
                      
                    </div>
                </div>
                <div class="form-row row-fluid">                       
                    <div class="span12">
                        <div class="row-fluid">
                            <div class="form-actions">
                            <div class="span12 controls">
                                <button tabindex="5" type="submit" class="btn btn-info right" id="loginBtn" name="loginBtn"><span class="icon16 icomoon-icon-enter white"></span> Login</button>
                            </div>
                            </div>
                        </div>
                    </div> 
					<p style="font-size:bold">Version 5.0.0</p>
                </div>
            </form>
		

        </div>
		<div style="width:20%" >
                    <div class="span12">
                        <div  style="width:90%; margin-top:45%; margin-left:30%" class="row-fluid">
							<div class="span3">
								<span style="font-size:11px; "><img style="width:15Vh; height:8Vh" src="images/Leonard_Cheshire_logo_RGB_Colour_AW.PNG" alt="Leonard Cheshire"> </span>
                            </div>
                            <div class="span3">
								<span style="font-size:11px;"><img style="width:15Vh; height:10Vh" src="images/VSO-logo_RGB_black_large.png" alt="VSO International"> </span>
                            </div>
							<div class="span3">
								<span style="font-size:11px; "><img style="width:15Vh; height:8Vh" src="images/GEC_UKaid_lockup_RGB - Copy.jpg" alt="GEC_UKaid_lockup_RGB"> </span>
                            </div>
							<div class="span3">
								<span style="font-size:11px; "><img style="width:15Vh; height:8Vh;" src="images/action-aid.png" alt="Action Aid"> </span>
                            </div>
						</div>
					</div>
			</div>
    </div>
	<?php
	}
	else
	echo "<div class=\"alert alert-error\">$ErrorMessage</div>";
	?>
		<div class="span4">
			
		</div>
    </div>

     <script type="text/javascript">
        $(document).ready(function() {
            $("input, textarea, select").not('.nostyle').uniform();
            $("#term").select2();
            $("#session").select2();
            $("#loginForm").validate({
                rules: {
                    username: {
                        required: true,
                        minlength: 4
                    },
                    password: {
                        required: true,
                        minlength: 6
                    },
                     term: {
                        required: true
                    },
                     session: {
                        required: true
                    }
                },
                messages: {
                    username: {
                        required: "Fill me please!",
                        minlength: "My name is bigger!"
                    },
                    password: {
                        required: "Please provide a password!",
                        minlength: "My password is more that 6 chars!"
                    },
                    term: {
                        required: "select term"
                    },
                     session: {
                        required: "select session"
                    }
                }   
            });
        });
    </script>
    </body>
</html>
