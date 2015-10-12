<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) {
	header("Location:index.php");	
}

require_once "inc/head.php";
require_once "inc/menu_left.php";

require_once "classes/trivia_question_master.php";

function GetAnswer($questionid,$answer) {
	$sql = "CALL sp_trivia_question_get_answer($questionid)";
	$result = $GLOBALS['db']->Query($sql);
	if ($GLOBALS['db']->NumRows($result) == 0) {								
		return "No Answer!";
	}
	else {
		while ($row = $GLOBALS['db']->FetchArray($result)) {
			if ($answer == $row['Answer']) {
				return "Correct - $answer";
			}
			else {
				return "Incorrect, you said $answer, answer is: ".$row['Answer'];
			}
		}
	}
}
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home"));				
		echo DrawTitleBar();
		?>		
        <div class="content" data-role="content">
			<h3>Your hall of fame details</h3>
			<div id='response'></div>
            <?php				
			$sql = "CALL sp_trivia_halloffame_details(".$_SESSION['userid'].")";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {								
				echo "<img src='img/star.png'><br />\n";
				echo "No results yet!";
			}
			else {
				echo "<div class='ui-grid-b'>\n";
				echo "<div class='ui-block-a'><div class='ui-bar ui-bar-b' style='height:60px'>Question</div></div>\n";
				echo "<div class='ui-block-b'><div class='ui-bar ui-bar-b' style='height:60px'>Your Answer</div></div>\n";
				echo "<div class='ui-block-c'><div class='ui-bar ui-bar-b' style='height:60px'>Points</div></div>\n";					
				while ($row = $GLOBALS['db']->FetchArray($result)) {
					echo "<div class='ui-block-a'><div class='ui-bar ui-bar-c' style='height:100px'>".$row['Question']."</div></div>\n";
					echo "<div class='ui-block-b'><div class='ui-bar ui-bar-c' style='height:100px'>".GetAnswer($row['QuestionID'],$row['Answer'])."</div></div>\n";
					echo "<div class='ui-block-c'><div class='ui-bar ui-bar-c' style='height:100px'>".$row['Points']."</div></div>\n";					
				}
				echo "</div><!-- /grid-c -->\n";
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

