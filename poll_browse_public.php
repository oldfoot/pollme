<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }

// REMOVE ANY QUIZZES THE USER MAY ALREADY BE A PART OF
unset($_SESSION['triviaid']);

require_once "inc/head.php";
require_once "inc/menu_left.php";
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home"));				
		echo DrawTitleBar();
		?>		
        <div class="content" data-role="content">
			<h3>Browse Public Polls</h3>
			
			<ul data-role="listview" data-filter="true" data-input="#filterBasic-input">
				<li><div id='response'></div></li>
				<?php				
				$sql = "CALL sp_poll_browse_public()";
				$result = $GLOBALS['db']->Query($sql);
				
				while ($row = $GLOBALS['db']->FetchArray($result)) {
					echo "<li><input type='button' value='".$row['Question']."' onClick=\"document.location.href='poll_answer.php?code=".$row['FriendlyCode']."'\"/></li>";;					
				}			
				?>				
				
			</ul>
			
        </div>
		
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>	
</body>
</html>

