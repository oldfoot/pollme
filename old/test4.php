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
		  animation:{
			duration: 1000,
			easing: 'inAndOut',
		  },
		  vAxis: {minValue:100, maxValue:100}
    };
	var data;
	var loaded = false;
	var  chart;
	function loadData() {
		var jsonData = $.ajax({
          url: "getData.php",
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
		data.setValue(0, 1, 5);
		drawChart();
	}

    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>	
	<input type="button" onClick="drawChart()" value="Refresh">
	<input type="button" onClick="UpdateVal()" value="Set to 5">
  </body>
</html>