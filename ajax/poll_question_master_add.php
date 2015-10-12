<?php
define( '_VALID_DIR_', 1 );
require "../config.php";

require_once $dr."classes/poll_question_master.php";

if (!ISSET($_POST['question']) ||!ISSET($_POST['friendlycode']) || !ISSET($_POST['status']) || !ISSET($_POST['answerlimit']) || !ISSET($_POST['public'])) { die("Invalid Params"); }
$question = CleanVar($_POST['question']);
$friendlycode = CleanVar($_POST['friendlycode']);
$status = CleanVar($_POST['status']);
$answerlimit = CleanVar($_POST['answerlimit']);
$public = CleanVar($_POST['public']);

$pqm = new PollQuestionMaster;
//$pqm->SetVar("debug",true);
$pqm->SetVar("question",$question);
$pqm->SetVar("questiontype",'mc');
$pqm->SetVar("friendlycode",$friendlycode);
$pqm->SetVar("status",$status);
$pqm->SetVar("answerlimit",$answerlimit);
$pqm->SetVar("public",$public);
	
if (!ISSET($_SESSION['pollid'])) {	
	//echo "Add";
	$pqm->SetVar("useridadded",$_SESSION['userid']);
	$result = $pqm->Add();	
}
else {
	//echo "Edit";
	$pqm->SetVar("pollid",$_SESSION['pollid']);
	$pqm->SetVar("useridedited",$_SESSION['userid']);
	$result = $pqm->Edit();
}

if ($result) {
	//echo "Setting session";
	$_SESSION['pollid'] = $pqm->GetVar("pollid");
}

$res = $pqm->ShowErrors();
$res = str_replace("\n","",$res);

echo $res;
?>