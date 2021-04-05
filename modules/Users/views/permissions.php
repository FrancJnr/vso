<?php
$PageName="Create User";
$TooltipRequired=1;
$SearchRequired=0;
$FormRequired=1;
$TableRequired=1;
include("../model/Staff.php");
include("../../config/database.php");

include("../../../Include.php");
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
	$user = new Staff($database->getConnection());
	$userId = isset($_GET['UserId']) ? $_GET['UserId'] : '';
	$user = $user->readOne("vw_users", "UserId", $userId);

?>

        <div id="content" class="clearfix">
            <div class="contentwrapper">
                <?php $BreadCumb="User Permission"; BreadCumb($BreadCumb); ?>
				<?php DisplayNotification(); ?>	

                <div class="row-fluid">
                    <div class="span4">
                        <div class="box chart gradient">
                            <div class="content" style="padding-bottom:0;">
								<form onsubmit="return true" class="form-horizontal"  name="User" id="User" method="Post">
								    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="normal">username</label>
                                                <input tabindex="3" class="span8" id="username" type="text" name="username" value="<?php echo $user["Username"]; ?>"  />
                                            </div>
                                        </div>
                                    </div>
									
                                    <div class="form-row row-fluid">
                                        <div class="span12">
                                            <div class="row-fluid">
                                                <label class="form-label span4" for="normal">User type</label>
                                                <select tabindex="1" class="nostyle" id="usertype"  name="usertype" style="width:50%">
												<option><?php echo $user["Position"]?></option>
												<?php 
												foreach($usertypeList as $list){
													$value = $list['usertypeid'];
													$display = $list['usertype'];
													 echo "<option value=\"$value\" $Selected>$display</option>";
												 }; ?>
												</select>
                                            </div>
                                        </div>
                                    </div>
									
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="normal">email</label>
												<input tabindex="3" class="span8" id="email" type="text" name="email" value="<?php echo $user["email"]; ?>"/>
											</div>
										</div>
									</div>
                                    <div class="form-row row-fluid">
                                        <div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="normal">First Password</label>
												<input tabindex="3" class="span8" id="password" type="text" name="password" value="<?php echo $user["first_password"]; ?>"/>
											</div>
										</div>
									</div>
									<?php $ButtonContent="Save"; ActionButton($ButtonContent,2,"Submit"); ?>
								</form>
                            </div>
                        </div>
                    </div>	
					<div class="span8">
						<div class="box gradient">
							<div class="title">
								<h4>
									<span>Module Access Rights</span>
								</h4>
							<a href="#" class="minimize">Minimize</a>
							</div>
							<div class="content noPad clearfix">
							
								<table id="moduleAccess" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
									<thead>
										<tr>
											<th>ID</th>
											<th>Module</th>
											<th>Read</th>
											<th>Write</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								
							
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
	
<script type="text/javascript">
var cSelect; 
$(document).ready(function() {
	$('#moduleAccess').dataTable({
		"sPaginationType": "two_button",
		"bJQueryUI": false,
		"bAutoWidth": false,
		"bLengthChange": false,  
		"bProcessing": true,
		"bDeferRender": true,
		"sAjaxSource": "plugins/Data/data7.txt",
		"fnInitComplete": function(oSettings, json) {
		  $('.dataTables_filter>label>input').attr('id', 'search');
		}
	});	
	$("#Newuser").validate({
		ignore: 'input[type="hidden"]',
		rules: {
			username: {
				required: true,
			},
			usertype: {
				required: true,
			},
			password: {
				required: true,
				
			}
		},
		messages: {
			username: {
				required: "User Name cannot be null",
			},
			usertype: {
				required: "Please Select this!!",
			},
			password: {
				required: "Please enter this!!",
			}
		}   
	});

});

</script>	
<script>
	$(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
                $("#result").html("Checkbox is checked.");
            }
            else if($(this).prop("checked") == false){
                $("#result").html("Checkbox is unchecked.");
            }
        });
    });
</script>
<script type="text/javascript">  
        $(".chcktbl").click(function () { 
			console.log("check box clicked");
            var rdata = $(this).attr("data-id"); // reading the id of the checkbox through data-id   
            console.log(rdata);  
            //alert(rdata);  
            // $.ajax({  
            //     type: "Post",  
            //     contentType: "application/json; charset=utf-8",  
            //     url: "GridUpdate.aspx/UpdateIsData",  
            //     data: '{eid: ' + rdata + '}',  
            //     dataType: "json",  
            //     success: function (response) {  
            //         if (response != 0) {  
            //             alert("Data Update Successfully!!!!");  
            //             location.reload();  
            //         }  
            //     },  
            //     error: function (response) {  
            //         if (response != 1) {  
            //             alert("Error!!!!");  
            //         }  
            //     }  
            // });  
        });  
    </script>  
<?php
include("../../../Template/Footer.php");
?>