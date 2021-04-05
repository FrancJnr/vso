<?php
$PageName="Centers";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../../Include.php");
include("../model/Registration.php");
include("../../config/database.php");
IsLoggedIn();
include("../../../Template/HTML.php");
?>    

<?php
include("../../../Template/Header.php");
?>

<?php
include("../../../Template/Sidebar.php");

?>

    <div id="content" class="clearfix">
            <div class="contentwrapper">
                <?php $BreadCumb=""; BreadCumb($BreadCumb); ?>
                
                <?php if ($msg): ?>
                <p><?=$msg?></p>
                <?php endif; ?>

                <?php
                   $database = new Database();
                   $registration = new Registration($database->getConnection());
                   $RegistrationId = isset($_GET['RegistrationId']) ? $_GET['RegistrationId'] : '';
                   $registration->RegistrationId= $RegistrationId;
                   $row = $registration->selectOne();

                if(isset($_GET['RegistrationId'])){
                    $title = $row['GirlName']."--".$row['OOSG_CODE'];
                    $confirm_notice= "<p>Are you sure you want to delete  <b>" .$title ."</b> </p>";
                }
                if (isset($_POST['confirm'])) {
                    if($_POST['confirm']=='yes'){
                        $registration->RegistrationId= $RegistrationId;                        
                        $registration->deleteOne();
                        $msg = 'Deleted!';   
                        echo $msg;
                    }else{
                        $msg = 'Request Canceled!';   
                        echo $msg;
                        header("Location:Centers");

                    }
                    
                }
                //  var_dump($Currentcenter);
                ?>	
                <div class="row-fluid">				
                    <div class="span12">
                   <?php echo  $confirm_notice; ?>
                        <div class="box gradient">
                     	<form class="well" method="post">
                        <button class="btn btn-danger" type="submit" name="confirm" value="yes" class="create-contact">YES</button>
                        <a   href="Registration" type="Cancel" class="btn btn-primary">NO</a>
                        </form>
                      					
                        
                        </div>
                    </div>       
                </div>
            </div>
    </div>
		


