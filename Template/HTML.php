<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	<base href="<?php echo $BASEURL; ?>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo "$SCHOOLNAME"; ?></title>
    <meta name="author" content="" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="application-name" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/images/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/images/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/images/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="/images/apple-touch-icon-57-precomposed.png" />
    
    <!--[if lt IE 9]>
      <script src="/js/html5.js"></script>
    <![endif]-->
	
	<!-- Necesarry CSS Files -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="css/supr-theme/jquery.ui.supr.css" rel="stylesheet" type="text/css"/>
    <link href="css/icons.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" /> 
    <link href="css/custom.css" rel="stylesheet" type="text/css" /> 
    <link href="css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" /> 
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	
    <script  type="text/javascript" src="js/jquery1.8.js"></script>
    <script type="text/javascript" src="js/jquery1.9.js"></script>

  <script type="text/javascript" src="js/jquery-ui-1.10.3.js"></script>
     <script type="text/javascript" src="js/jquery.table2excel.js"></script>
     <script type="text/javascript" src="js/datatables/jquery.dataTables.js"></script>
      <script type="text/javascript" src="js/datatables/dataTables.bootstrap.js"></script> 
	  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.css"/>
 <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script> -->
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.js"></script>


<script src="https://cdn.datatables.net/buttons/1.6.4/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.print.min.js "></script>
	<script type="text/javascript" src="js/JqueryShortcut.js"></script>
	<script type="text/javascript" src="js/jshortcuts.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>  
    <script type="text/javascript" src="plugins/misc/touch-punch/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="plugins/misc/totop/jquery.ui.totop.min.js"></script> 
	<script type="text/javascript" src="js/GetDetail.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script> 
     <script type="text/javascript" src="js/jquery.PrintArea.js"></script> 

	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

   
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>



	
	<?php 
        $PageName="";
        if($PageName!="Login" && $PageName!="ErrorPage") { ?>
	<script type="text/javascript">
        document.documentElement.className += 'loadstate';
    </script>
	<?php } ?>
	
	<?php
	if(isset($EditorRequired))
	{
	?>
	<script src="plugins/editor/ckeditor.js"></script>
	<?php
	}
	if(isset($MonthPicker))
	{
	?>
	<script src="/js/monthpicker.js"></script>
	<?php
	}	
	if(isset($ChartRequired))
	{
	?>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.js"></script>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.grow.js"></script>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.tooltip_0.4.4.js"></script>
    <script type="text/javascript" src="plugins/charts/flot/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="plugins/charts/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="plugins/charts/knob/jquery.knob.js"></script>
	<script type="text/javascript" src="plugins/charts/canvasjs/canvasjs.min.js"></script>
    <script type="text/javascript" src="js/Chart.js"></script>

	<?php
	}
	?>
	
	<?php
	if(isset($CalendarRequired))
	{
	?>
    <link href="plugins/misc/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="plugins/misc/fullcalendar/fullcalendar.min.js"></script>
	<?php
	}
	if(isset($ColorPicker))
	{
	?>
    <script type="text/javascript" src="plugins/forms/color-picker/colorpicker.js"></script>
    <link href="plugins/forms/color-picker/color-picker.css" type="text/css" rel="stylesheet" />
	<?php
	}
	?>	
	
	<?php
	if(isset($TooltipRequired))
	{
	?>
    <link href="plugins/misc/qtip/jquery.qtip.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="plugins/misc/qtip/jquery.qtip.min.js"></script>
	<?php
	}
	?>

	<?php
	if(isset($SearchRequired))
	{
	?>
    <link href="plugins/misc/search/tipuesearch.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="plugins/misc/search/tipuesearch_set.js"></script>
    <script type="text/javascript" src="plugins/misc/search/tipuesearch_data.js"></script>
    <script type="text/javascript" src="plugins/misc/search/tipuesearch.js"></script>
	<?php
	}
	?>

	<?php
	if(isset($FormRequired))
	{
	?>
    <link href="plugins/forms/select/select2.css" type="text/css" rel="stylesheet" />
    <link href="plugins/forms/uniform/uniform.default.css" type="text/css" rel="stylesheet" />   
    <script type="text/javascript" src="plugins/forms/watermark/jquery.watermark.min.js"></script>
    <script type="text/javascript" src="plugins/forms/uniform/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="plugins/forms/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/supr-theme/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="plugins/forms/maskedinput/jquery.maskedinput-1.3.min.js"></script>
    <script type="text/javascript" src="plugins/forms/dualselect/jquery.dualListBox-1.3.min.js"></script>	
    <script type="text/javascript" src="plugins/forms/select/select2.js"></script>
    <script type="text/javascript" src="plugins/forms/inputlimiter/jquery.inputlimiter.1.3.min.js"></script>

	<?php
	}
	?>

	<?php
	if(isset($TableRequired))
	{
	?>
    <link href="plugins/tables/dataTables/jquery.dataTables.css" type="text/css" rel="stylesheet" />  
    <script type="text/javascript" src="plugins/tables/dataTables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="plugins/tables/responsive-tables/responsive-tables.js"></script>
	<?php if(!isset($TW)) { ?>
    <script type="text/javascript" src="js/datatable.js"></script>
	<?php } else { ?>
	<script type="text/javascript" src="js/datatablewith.js"></script>
	<?php } ?>
	
	<?php
	}
	if(isset($TextBoxAutoComplete))
	{
	?>
	<script src="js/auto.js" type="text/javascript"></script> 
	<?php
	}
	if(!isset($NoJavascript))
	{
	?>
	<NOSCRIPT>
	<meta HTTP-EQUIV="REFRESH" content="0; url=NoJavaScript.html">
	</NOSCRIPT>
	<?php } ?>	
	
	<?php if($PageName!="Login" && $PageName!="ErrorPage") { ?>
	<script type="text/javascript">
	$(document).ready(function() 
	{		
		$('#myModal').modal({ show: false});
		$('#myModal').on('hidden', function () {
			console.log('modal is closed');
		})
		$("a[data-toggle=modal]").click(function (e) {
		lv_target = $(this).attr('data-target');
		lv_url = $(this).attr('href');
		$(lv_target).load(lv_url);
		});
	});
	</script>

	<?php } ?>
	
	<?php
	if($PageName=="DashBoard")
	include("DashBoardCalendar.php");
	?>
    </head>
	
	<?php if($PageName!="Login" && $PageName!="ErrorPage") { ?>
    <body>
    <div id="qLoverlay"></div>
    <div id="qLbar"></div>
	<?php } ?>
