       <!-- <div class="resBtn">
            <a href="#"><span class="icon16 minia-icon-list-3"></span></a>
        </div> -->
        
        <div class="collapseBtn leftbar">
             <a href="#" class="tipR" title="Hide sidebar"><span class="icon12 minia-icon-layout"></span></a>
        </div>

        <div id="sidebarbg"></div>
        <div id="sidebar">

            <!-- <div class="shortcuts">
                <ul>
                    <li><a href="DashBoard" title="DashBoard" class="tip"><span class="icon24 icomoon-icon-home-7"></span></a></li>
                    <li><a href="Circular" title="Circular" class="tip"><span class="icon24 icomoon-icon-support"></span></a></li>
                    <li><a href="Calendar" title="Calendar" class="tip"><span class="icon24 brocco-icon-calendar"></span></a></li>
                </ul>
            </div>  -->
            <div class="sidenav">
				
                <div class="sidebar-widget" style="margin: -1px 0 0 0;">
                    <h5 class="title" style="margin-bottom:0"><?php echo Translate('Navigation'); ?></h5>
                </div>
				
                <div class="mainnav">
                    <ul>
					<?php if(!is_numeric($USERTYPEID) && ($USERTYPEID=="Parents" || $USERTYPEID=="Student")) { ?>
					<li><a href="Payment" id="PaymentLink"><span class="icon16 icomoon-icon-target "></span><?php echo Translate('Fee Payment'); ?></a></li>
                    <?php } else { ?>
                        <li>
                            <a href="#"><span class="icon16 icomoon-icon-puzzle"></span><?php echo Translate('Administration'); ?></a>
                            <ul class="sub">
                                <li><a href="modules/Centers/views/index.php"><span class="icon16 entypo-icon-users"></span><?php echo Translate('Centers'); ?></a></li>
                                <li><a href="modules/Registration/views/index.php" id="RegistrationLink"><span class="icon16 icomoon-icon-license"></span><?php echo Translate('Registration'); ?></a></li>
                                <li><a href="modules/Registration/views/Student.php" id="AdmissionLink"><span class="icon16 icomoon-icon-stack"></span><?php echo Translate('Admission'); ?></a></li>
                                <li><a href="modules/Cohorts/views/Cohorts.php"><span class="icon16 icomoon-icon-graduation"></span><?php echo Translate('Cohorts'); ?></a></li>

 										
                            </ul>
                        </li>
                    
                        <li>
                            <a href="#"><span class="icon16 minia-icon-bars-2"></span><?php echo Translate('Learner Progress'); ?></a>
                            <ul class="sub">
								<li><a href="modules/Cohorts/views/Attendance.php" id="IncomeLink"><span class="icon16 minia-icon-list-4"></span><?php echo Translate('Session Attendance'); ?></a></li>
                                <li><a href="modules/StudentProgress/views/promotions.php" id="IncomeLink"><span class="icon16 minia-icon-list-4"></span><?php echo Translate('Progress Report'); ?></a></li>	
                                <li><a href="modules/StudentProgress/views/promotions.php"><span class="icon16 icomoon-icon-graduation"></span><?php echo Translate('Transitions'); ?></a></li>

							
							</ul>
						</li>
                
                        
                        <li><a href="modules/Users/views/index.php"><span class="icon16 entypo-icon-user"></span><?php echo Translate('Manage Staff'); ?></a></li>
                        <li><a href="CoachNotes"><span class="icon16 entypo-icon-user"></span><?php echo Translate('Coach Center Visit'); ?></a></li>


                        <li><a href="Uploadcontent"><span class="icon16 entypo-icon-upload"></span><?php echo Translate('Upload Content'); ?></a></li>
                        <li><a href="modules/Users/views/users-index.php"><span class="icon16 entypo-icon-users"></span><?php echo Translate('User Management'); ?></a></li>
                        <li><a href="modules/Reports/index.php"><span class="icon16 entypo-icon-upload"></span><?php echo Translate('Reports'); ?></a></li>

                        <!-- <li>
                            <a href="#"><span class="icon16 icomoon-icon-clipboard"></span><?php echo Translate('Reports'); ?></a>
                            <ul class="sub">
                                     
                                        <li><a href="AdmissionReport"><span class="icon16 icomoon-icon-arrow-right-2"></span><?php echo Translate('Admission Report'); ?></a></li>
                                         <li><a href="RegistrationReport"><span class="icon16 icomoon-icon-arrow-right-2"></span><?php echo Translate('Waiting List Report'); ?></a></li>
                                         <!-- <li><a href="StudyingReport"><span class="icon16 icomoon-icon-arrow-right-2"></span><?php echo Translate('Studying Report'); ?></a></li> -->
                                         <!-- <li><a href="StudentsLeft"><span class="icon16 icomoon-icon-arrow-right-2"></span><?php echo Translate('Students Left'); ?></a></li> -->
                                         <!-- <li><a href="StudentAttendanceReport"><span class="icon16 icomoon-icon-arrow-right-2"></span><?php echo Translate('Student Attendance'); ?></a></li> -->

                                     </ul>								
								</li>
							</ul>
						</li> 
                <?php } ?>
					</ul>
                </div>
            </div>
        </div>
		<div class="modal fade" id="myModal"></div>