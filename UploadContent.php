<?php
$PageName="Uploadcontent";
$FormRequired=1;
$TableRequired=1;
$SearchRequired=1;
$TooltipRequired=1;
include("Include.php");
IsLoggedIn();
include("Template/HTML.php");
?>    

<?php
include("Template/Header.php");
?>

<?php
include("Template/Sidebar.php");
?>
<?php
$message = "";
if ($_FILES["file"]["size"] > 0){
  if ($_FILES["file"]["error"] > 0){
	$message = '<div class="alert alert-error" style="margin:5px;">'.$_FILES["file"]["error"].'</div>';
    }
  else{
		$class = $_POST['class'];
		$description = $_POST['description'];
		if($class==null){
			$message = '<div class="alert alert-error" style="margin:5px;">You Have not selected a session</div>';
		}else if($description == null){
			$message = '<div class="alert alert-error" style="margin:5px;">You Have not added a description for the content</div>';
		}else{
			$filetype = $_FILES["file"]["type"];
			$extension = explode("/", $filetype)[1];
			$filename = $_FILES["file"]["name"];
			$filesize = $_FILES["file"]["size"];			
			$fileurl =  $_SERVER['HTTP_HOST']."/vso/uploads/".$filename.$_FILES["type"];
			$query = "INSERT INTO e_learning_media(class, file_name, file_size, file_url, session, description, file_type)
			VALUES('".$class."','".$filename."','".$filesize."','".$fileurl."','".$CURRENTSESSION."','".$description."','".$filetype."')";
			$check1=mysqli_query($CONNECTION,$query);

			move_uploaded_file($_FILES["file"]["tmp_name"],
			"./uploads/" . $filename);
			$message = '<div class="alert alert-success" style="margin:5px;">Content Uploaded Successfully</div>';
		}
	}
}else{
	$message = '<div class="alert alert-info" style="margin:5px;">Select a content to upload</div>';

  }

?>
<?php

    $query3="select CohortTitle ,CohortId FROM vs_cohorts order by CohortTitle";
    $check3=mysqli_query($CONNECTION,$query3);
    while($row3=mysqli_fetch_array($check3)){
		$ComboCurrentClassName=$row3['CohortTitle'];
        if($POSTSectionId==$ComboCurrentSectionId)
        {
            $SelectedClass="selected";
            $ValidSectionId=1;
        }
        else
        $SelectedClass="";
        $ListCurrentClass.="<option value=\"$ComboCurrentClassName\" $SelectedClass>$ComboCurrentClassName $ComboCurrentSectionName</option>";
    }
				 
$Action=isset($_GET['Action']) ? $_GET['Action'] : '';
$UniqueId=isset($_GET['UniqueId']) ? $_GET['UniqueId'] : '';
?>	
        <div id="content" class="clearfix">
            <div class="contentwrapper">
                <?php $BreadCumb="Upload E-Learning Content"; BreadCumb($BreadCumb); ?>
				<?php DisplayNotification(); ?>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="box chart gradient">
                            <div class="title">
                                <h4>
                                    <span>Upload Curriculumn Materials (Videos/Documents/Images)</span>
                                </h4>
                                <a href="#" class="minimize">Minimize</a>
                            </div>
                        <div class="content noPad clearfix">
							<?php echo $message; ?>
								<form onsubmit="return true"  class="form-horizontal"  name="ReadingReport" id="ReadingReport" method="Post"  enctype="multipart/form-data">
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="file">File</label>
												<input tabindex="301" class="span8 tip" title="File" id="file" type="file" name="file"/>
											</div>
										</div>
									</div>
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="class">Cohort</label>
												<div class="span8 controls sel">
												<select tabindex="303" class="nostyle" name="class" id="class" style="width:100%;">
												<option></option>
												<?php echo $ListCurrentClass; ?>
												</select>
												</div>
											</div>
										</div>
									</div>
                                    <div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span4" for="description">Description</label>
												<div class="span8 controls sel">
                                                <textarea class="span8 tip" id="description" rows="5" cols="40" type="text" name="description"/></textarea>
												</div>
											</div>
										</div>
									</div>
									<?php $ButtonContent="submit"; ActionButton($ButtonContent,2, "Submit"); ?>
								</form>
								<?php
										$query2="SELECT id, class, file_name, file_size, file_url, file_type, session, description, uploaded_on
										FROM e_learning_media WHERE session = '$CURRENTSESSION'";
										$result2=mysqli_query($CONNECTION,$query2);
										$count=mysqli_num_rows($result2);
										$DATA=array();
										$QA=array();
										while($row=mysqli_fetch_array($result2))
										{
											$id=$row['id'];
											$class=$row['class'];	
											$file_name=$row['file_name'];	
											$file_size=$row['file_size'];	
											$file_url=$row['file_url'];
											$file_type=$row['file_type'];
											$session=$row['session'];
											$description=$row['description'];
											$uploaded_on=$row['uploaded_on'];
											$QA[]=array($id,$class,$file_name,$file_size,$file_type,$description,$uploaded_on);
										}
										$DATA['aaData']=$QA;
										$fp = fopen('plugins/Data/data5.txt', 'w');
										fwrite($fp, json_encode($DATA));
										fclose($fp);	
										?>
										<div class="content noPad clearfix">
									<table id="files" cellpadding="0" cellspacing="0" border="0" class="responsive dynamicTable display table table-bordered" width="100%">
										<thead>
											<tr>
												<th>id</th>
												<th>Session</th>
												<th>File Name</th>
												<th>Size</th>
												<th>Type</th>
												<th>Description</th>
												<th>Uploaded On</th>
					
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
        </div>

<script type="text/javascript">
		$("#class").select2();
		$('#class').select2({placeholder: "Select"});
		$("input, textarea, select").not('.nostyle').uniform();
$(document).ready(function() {
	console.log('here');
	$('#files').dataTable({
		"sPaginationType": "two_button",
		"bJQueryUI": false,
		"bAutoWidth": false,
		"bLengthChange": false,  
		"bProcessing": true,
		"bDeferRender": true,
		"sAjaxSource": "plugins/Data/data5.txt",
		"fnInitComplete": function(oSettings, json) {
		  $('.dataTables_filter>label>input').attr('id', 'search');
			$('#myModal').modal({ show: false});
			$('#myModal').on('hidden', function () {
				console.log('modal is closed');
			})
			$("a[data-toggle=modal]").click(function (e) {
			lv_target = $(this).attr('data-target');
			lv_url = $(this).attr('href');
			$(lv_target).load(lv_url);
			});	
		}
	});
});
</script>
		
<?php
include("Template/Footer.php");
?>
