<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
/*

if (!ISSET($_SESSION['triviaid'])) {
	if (!ISSET($_GET['triviaid']) || !IS_NUMERIC($_GET['triviaid'])) { header("Location:index.php"); }
	$_SESSION['triviaid'] = $_GET['triviaid'];
}
*/
require_once "inc/head.php";
require_once "inc/menu_left.php";

require_once "classes/trivia_question_master.php";
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home"));				
		echo DrawTitleBar();
		?>		
        <div class="content" data-role="content">
			<h3>Hall of Fame</h3>
			<div id='response'></div>
            <?php				
			$sql = "CALL sp_trivia_halloffame()";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {								
				echo "<img src='img/star.png'><br />\n";
				echo "No results yet!";
			}
			else {
				echo "<ul data-role=\"listview\" data-count-theme=\"b\" data-inset=\"true\">\n";    
				while ($row = $GLOBALS['db']->FetchArray($result)) {
					if ($row['UserID'] == $_SESSION['userid']) {
						echo "<li><a href='halloffame_details.php'>".$row['FullName']."<span class=\"ui-li-count\">".$row['total']."</span></a></li>\n";
					}
					else {
						echo "<li>".$row['FullName']."<span class=\"ui-li-count\">".$row['total']."</span></li>\n";
					}
				}
				echo "</ul>\n";
			}
			?>				
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

