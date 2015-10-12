<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }

// REMOVE ANY QUIZZES THE USER MAY ALREADY BE A PART OF
unset($_SESSION['triviaid']);

require_once "inc/head.php";
require_once "inc/menu_left.php";
$triviacode = "";
if (ISSET($_GET['triviacode'])) {
	require "classes/trivia_master.php";
	$tm = new TriviaMaster;
	//$tm->SetVar("debug",true);
	$triviacode = CleanVar($_GET['triviacode']);
	$tm->SetVar("triviacode",$triviacode);
	$response = $tm->GetTriviaIDFromCode();	
	
	if (!IS_NUMERIC($response)) {
		$response = "None found";
	}
	else {
		$_SESSION['triviaid'] = $response;
		header("Location: question.php");
	}
	
}
?>

<body>
	<div class="demo-wrapper" data-role="page" id="browse_private">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("splash.php"=>"Home"));				
		echo DrawTitleBar();
		?>		
		<div id='searchresponse'><?php echo $response;?></div>
        <div class="content" data-role="content">
			<h3>Enter code</h3>			
			<form method="get" action="browse_private.php">
				<input name="triviacode" id="triviacode" placeholder="Enter code..." value="<?php echo $triviacode;?>">
				<input type='submit' name='search' value='Lookup Code'>
			</form>
        </div>
		
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>	
</body>
</html>

