<?php if(!isset($_SESSION['CURRENTTERM'])){
header("Location:/vso/DashBoard");
error_reporting(0);
} ?>  
<div id="header">
        <div style="display:block !important;" class="navbar">
            <div class="navbar-inner">
              <div class="container-fluid">
                <a class="brand" href="DashBoard"><?php if($SCHOOLNAME=="") echo $APPLICATIONNAME; else echo $SCHOOLNAME; ?></a>
                <div class="nav-no-collapse">
                    <ul class="nav pull-right" >
						<?php if(is_numeric($USERTYPEID)) { ?>
                        <li class="dropdown">
                            <a href="#" >
                                <span class="icon16 icomoon-icon-cog"></span> <?php echo Translate('System Configuration'); ?>
                            </a>
						
						</li>
						<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hi!! <font color="red"><?php echo $USERNAME; ?></font>
                                <b class="caret"></b>
                            </a>
                            <ul style="width:150px !important;" class="dropdown-menu">
								<li><a href="ChangePassword"><span class="icon16 brocco-icon-key"></span>Change Password</a></li>
								<li><a href="LogOut"><span class="icon16 icomoon-icon-exit"></span> Logout</a></li>
                            </ul>
                        </li>
						<?php } ?>
							<?php
							$SCHOOLSESSION=isset($_SESSION['SCHOOLSESSION']) ? $_SESSION['SCHOOLSESSION'] : '';
                                                        $CURRENTTERM=isset($_SESSION['CURRENTTERM']) ? $_SESSION['CURRENTTERM'] : '';
							if($SCHOOLSESSION!="")
							{
							?>
                        <?php $allowedtochange=checkAllowedUser($USERTYPEID);
                      //  if($allowedtochange==TRUE){
                        ?>
							<li class="dropdown">
							<!-- 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<?php //if(!isset($CURRENTSESSION)) echo "<b>Choose Session</b>"; else echo "<b>$CURRENTSESSION</b>"; ?>
									<b class="caret"></b>
								</a> -->
								<ul class="dropdown-menu"> 
							
							<?php
//								foreach($SCHOOLSESSION as $SchoolSession)
//								{
//									$_SESSION['LastPage']=CurrentPageURL();
									echo "<li><a href=\"ActionGet/SetSession/$SchoolSession\"><b>Go to $SchoolSession</b></a></li>";
								//}
								?>
								</ul>
                                                            
							</li>
                                 <li class="dropdown">
								<!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<?php //if(!($CURRENTTERM)) echo "<b>Choose Term</b>"; else echo "<b>Tm$CURRENTTERM</b>"; ?>
									<b class="caret"></b>
								</a> -->
								<ul class="dropdown-menu"> 
							
							<?php
//								foreach($SCHOOLTERMS as $Schoolterm)
//								{
//									$_SESSION['CURERRENTTERM']=CurrentPageURL();
									echo "<li><a href=\"ActionGet/SetTerm/$Schoolterm\"><b>Term $Schoolterm</b></a></li>";
								//}
								?>
								</ul>
                                                            
							</li>
							<?php
                       // } //allowed to change term
							}
							?>
						<?php if($ACCOUNTLIST!="" && $USERTYPE!='Parents' && $USERTYPE!='Student') { ?>
                        <li class="dropdown">
                            <!-- <a href="#" class="dropdown-toggle" style="width:75%" data-toggle="dropdown"><span class="icon16 icomoon-icon-coins"></span> Bal <b class="caret"></b></a> -->
                                
                            <ul class="dropdown-menu">
							<?php echo $ACCOUNTLIST; ?>
                            </ul>
                        </li>
						<?php } 
						$query103="select LanguageName,LanguageId from lang";
						$check103=mysqli_query($CONNECTION,$query103);
						$count103=mysqli_num_rows($check103);
						$ListLang=$SelectedLang="";
						if($count103>0)
						{
							while($row103=mysqli_fetch_array($check103))
							{
								$ListLanguageName=$row103['LanguageName'];
								$ListLanguageId=$row103['LanguageId'];
								if($LANGUAGE==$ListLanguageId)
								$SelectedLang=$ListLanguageName;
								$ListLang.="<li><a href=\"ActionGet/Language/$ListLanguageId\"><b>$ListLanguageName</b></a></li>";
							}
						}							
						if($SelectedLang=="")
						$SelectedLang="English";
						if($SelectedLang!="English")
						$ListLang.="<li><a href=\"ActionGet/Language/0\"><b>English</b></a></li>";
						$ListLang.="<li><a href=Language><b>Add more Language</b></a></li>";
							?>
						<!-- <li><a href="#" id="request" class="tip" title="Go to Full Screen"><span class="icon16 icomoon-icon-expand-2" ></span></a></li>
						<li><a href="#" id="exit" class="tip" title="Exit Full Screen"><span class="icon16 icomoon-icon-contract-2" ></span></a></li>
						<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon16 icomoon-icon-pencil" id="Select Language"></span><?php echo $SelectedLang; ?> <b class="caret"></b></a>
							<ul class="dropdown-menu scroll" style="height:200px; overflow:auto; margin-top:10px;">
							<?php echo $ListLang; ?>
							</ul>
						</li> -->
                    </ul>
                  
                </div>
              </div>
            </div>
          </div>
    </div>
    <div id="wrapper">	