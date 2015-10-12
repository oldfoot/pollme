<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
require "classes/poll_question_master.php";

$code = CleanVar($_GET['code']);

$pqm = new PollQuestionMaster;
//$pqm->SetVar("debug",true);
$pqm->SetVar("friendlycode",$code);
$pollid = $pqm->GetPollIDFromFriendlyCode();
$pqm->Info();

$question = $pqm->GetVar("Question");
?>
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript">
    
    // Load the Visualization API and the piechart package.
    google.load('visualization', '1', {'packages':['corechart']});
      
    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);
     
	
	var options = {
		  width: 600,
		  height: 400,
		  legend: { position: "none" },
		  animation:{
			duration: 1000,
			easing: 'inAndOut',
		  },		 
		  hAxis: {minValue:0, maxValue:10}
    };
	var data;
	var loaded = false;
	var  chart;
	function loadData() {
		var jsonData = $.ajax({
          url: "ajax/poll_get_data.php?code=<?php echo $code;?>",
          dataType:"json",
          async: false
          }).responseText;
          
      // Create our data table out of JSON data loaded from server.
      data = new google.visualization.DataTable(jsonData);
	  chart = new google.visualization.BarChart(document.getElementById('chart_div'));
	}
	
    function drawChart() {
      if (!loaded) {
		loadData();
		loaded = true;
	}

      // Instantiate and draw our chart, passing in some options.
      
      chart.draw(data, options);
    }
	
	function UpdateVal() {
		
		//loadData();
		textData = $.ajax({
          url: "ajax/poll_get_live.php?code=<?php echo $code;?>",
          dataType:"text",
          async: false
          }).responseText;
		  //alert(textData);
		//data.setValue(0, 1, 5);
		var nums = textData.split(",");
		for (i = 0; i < nums.length; i++) { 			
			//alert(nums[i]);
			data.setValue(i, 1, nums[i]);
		}
		drawChart();
	}
	
	var siID;
	//$(document).bind('pageinit', function () {
	/*
	$(document).on("pagecreate",function(event){
		//alert('starting');
		siID = setInterval(checkQuestionCount,4000);
	});
	$(document).on("pagehide",function(event){
	 clearInterval(siID);
	});
	
	function StopInterval(siID) {
		//alert('stopping refresh');
		clearInterval(siID);
	}
	function StartInterval(siID) {
		//alert('stopping refresh');
		siID = setInterval(checkQuestionCount,4000);
	}
	
	*/
	siID = setInterval(UpdateVal,3000);
	

    </script>
  </head>

  <body>
    <h1><?php echo $question;?></h1>
	<!--Div that will hold the pie chart-->
    
	
	<div style="width: 70%; float:left">
	   <div id="chart_div" style="font-size:large"></div>
	</div>

	<div style="width: 30%; float:right">
		<span style="font-size:xx-large">To Vote</span><br />
		<span style="font-size:large">Visit this URL:</span><br />
		<br />
		<?php echo $GLOBALS['wb']."/poll_answer.php?code=".$code;?>
		<br /><br />
		<span style="font-size:large">or</span><br /><br />
		
		<span style="font-size:large">Scan this QR code</span><br />
		
	   <div id="qr_code" ><img src="https://chart.googleapis.com/chart?cht=qr&chs=150x150&chl=<?php echo $GLOBALS['wb']."/poll_answer.php?code=".$code;?>"></div>
	   
	</div>
  </body>
</html>