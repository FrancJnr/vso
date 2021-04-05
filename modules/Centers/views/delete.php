<?php
$PageName="Centers";
$TooltipRequired=1;
$SearchRequired=1;
$FormRequired=1;
include("../../../Include.php");
include("../model/Centers.php");
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
<?php
  $database = new Database();
  $center = new Center($database->getConnection());
  $SelectedCenter = $center->readOne();
$msg = '';


?>
    <div id="content" class="clearfix">
            <div class="contentwrapper">
                <?php $BreadCumb="Update a catch up center"; BreadCumb($BreadCumb); ?>
                
                <?php if ($msg): ?>
                <p><?=$msg?></p>
                <?php endif; ?>

                <?php
                $database = new Database();
                $center = new Center($database->getConnection());
                $centers=$center->readAll();
                //  echo(isset($_GET['CenterId']) ? $_GET['CenterId']:'');
                $center->CenterId = isset($_GET['CenterId']) ? $_GET['CenterId']:'';
                $Currentcenter=$center->readOne();
                if(isset($_GET['CenterId'])){
                    $confirm_notice= "<p>Are you sure you want to delete  <b>" .$Currentcenter['CenterName'] ."</b> Form the catch up centers?</p>";
                }
                if (isset($_POST['confirm'])) {
                    if($_POST['confirm']=='yes'){
                        $center->CenterId = isset($_GET['CenterId']) ? $_GET['CenterId']:'';
                        $center->deleteCenter();
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
                     	<form method="post">
                        <button class="btn btn-danger" type="submit" name="confirm" value="yes" class="create-contact">YES</button>
                        <button  class="btn btn-success" type="Cancel" name="confirm" value="No" class="create-contact">NO</button>
                        </form>
                      					
                        
                        </div>
                    </div>       
                </div>
            </div>
    </div>
		


