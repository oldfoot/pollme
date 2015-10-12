<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }

unset($_SESSION['pollid']);

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
			<h3>Browse Polls</h3>			
			<ul data-role="listview" data-filter="true" data-input="#filterBasic-input">
			<?php			
			$sql = "CALL sp_polls_browse_my('".$_SESSION['userid']."')";
			$result = $GLOBALS['db']->Query($sql);
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$dataicon = "arrow-r";
				$datatheme = "c";
				$status = "";
				if ($row['Status'] == "deleted") {
					 $dataicon = "delete";
					 $datatheme = "a";
					 $status = "[Deleted]";
				}
				echo "<li><input data-theme='$datatheme' data-icon='$dataicon' type='button' value='".$row['Question']." $status' onClick=\"document.location.href='poll_config.php?pollid=".$row['PollID']."'\"/></li>";;
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

