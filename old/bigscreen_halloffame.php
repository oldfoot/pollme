<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
?>
<html>
<head>
<meta http-equiv="refresh" content="15">
</head>
<body>
<center><h1>Hall of Fame</h1></center>
<table border=1 width=100% style="font-size:xx-large">
<?php				
$sql = "CALL sp_trivia_halloffame()";
//echo $sql;
$result = $GLOBALS['db']->Query($sql);
if ($GLOBALS['db']->NumRows($result) == 0) {								
	echo "<img src='img/star.png'><br />\n";
	echo "No results yet!";
}
else {
	echo "<tr style='background-color:lightblue;font-size:45px'>\n";    
			echo "<td width=75%>Name</td>\n";
			echo "<td width=25%>Total</td>\n";
		echo "</tr>\n";
	
	while ($row = $GLOBALS['db']->FetchArray($result)) {		
		echo "<tr>\n";    
			echo "<td>".$row['FullName']."</td>\n";
			echo "<td>".$row['total']."</td>\n";
		echo "</tr>\n";
	}	
}
?>
</table>
</body>
</html>

