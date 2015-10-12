<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
require_once "inc/head.php";
require_once "inc/menu_left.php";
if (ISSET($_SESSION['answerid'])) {
	unset($_SESSION['answerid']);
}
if (!ISSET($_SESSION['pollid'])) { header("Location:index.php?err=nosessauth"); }
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","poll_config.php"=>"Poll Config","signout.php"=>"Logout"));
		echo DrawTitleBar();
		?>
		<div class="content" data-role="content">
			<h3>Browse Polls Options</h3>			
			<ul data-role="listview" data-filter="true" data-input="#filterBasic-input">
			<?php			
			$sql = "CALL sp_poll_question_answers_browse('".$_SESSION['pollid']."')";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {
				echo "<li>No options configured</li>";;
			}
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$dataicon = "arrow-r";
				$datatheme = "c";
								
				echo "<li><input data-theme='$datatheme' data-icon='$dataicon' type='button' value='".$row['Answer']."' onClick=\"document.location.href='poll_answer_add.php?answerid=".$row['AnswerID']."'\"/></li>";;
			}
			?>
			<input value="Add New" data-icon="plus" data-theme="b" type="button" onClick="document.location.href='poll_answer_add.php'">			
			</ul>
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

