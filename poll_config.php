<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

require_once "classes/poll_question_master.php";
$pqm = new PollQuestionMaster;
$friendlycode = "";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }
if (ISSET($_GET['pollid'])) { 
	// CHECK SECURITY
	$pqm->SetVar("debug",true);
	$pqm->SetVar("pollid",$_GET['pollid']);
	$pqm->Info();
	$userid_added = $pqm->GetVar("UserIDAdded");
	$friendlycode = $pqm->GetVar("FriendlyCode");
	
	if ($userid_added != $_SESSION['userid']) {
		//header("Location:index.php?err=notauth");
		die("Not Auth");
	}
	$_SESSION['pollid'] = CleanVar($_GET['pollid']); 	
}
// You can hit this page without a string value
if (!ISSET($_SESSION['pollid'])) { header("Location:index.php?err=nosessauth"); }

// COUNT RESPONSES
$total = 0;
$sql="CALL sp_poll_user_answers_count('".$_SESSION['pollid']."')";
$result = $GLOBALS['db']->Query($sql);
if ($GLOBALS['db']->NumRows($result) > 0) {
	while($row = $GLOBALS['db']->FetchArray($result)) {
		$total = $row['total'];
	}
}


require_once "inc/head.php";
require_once "inc/menu_left.php";
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","browse_my_polls.php"=>"My Polls"));
		echo DrawTitleBar();
		?>		
        <div class="content" data-role="content">
			<h3>Configure Poll</h3>
			<input value="Edit Poll" data-icon="gear" data-theme="c" type="button" onClick="document.location.href='create.php?edit'">
			<input value="Edit Options" data-icon="gear" data-theme="c" type="button" onClick="document.location.href='poll_question_answers.php'">
			<input value="Bigscreen Question" data-icon="gear" data-theme="c" type="button" onClick="document.location.href='public_poll.php?code=<?php echo $friendlycode;?>'">
			<input value="Clear Responses [<?php echo $total;?>]" data-icon="delete" data-theme="b" type="button" onClick="document.location.href='poll_user_answers_delete.php'">
			<input value="Delete" data-icon="delete" data-theme="b" type="button" onClick="document.location.href='poll_delete.php'">
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

