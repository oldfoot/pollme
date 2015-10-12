<?php
define( '_VALID_DIR_', 1 );
require "../config.php";

require_once $dr."classes/poll_question_answers.php";

if (!ISSET($_SESSION['pollid']) || !ISSET($_POST['answer'])) { die("Invalid Params"); }
$answer = CleanVar($_POST['answer']);

$pqa = new PollQuestionAnswers;
//$pqa->SetVar("debug",true);
$pqa->SetVar("answer",$answer);
$pqa->SetVar("pollid",$_SESSION['pollid']);
$pqa->SetVar("userid",$_SESSION['userid']);
	
//echo "Answer".$answer;

if (!ISSET($_SESSION['answerid'])) {	
	//echo "Add";	
	$result = $pqa->Add();	
}
else {
	//echo "Edit";	
	$pqa->SetVar("answerid",$_SESSION['answerid']);	
	$result = $pqa->Edit();
}

if ($result) {
	//echo "Setting session";
	//$_SESSION['answerid'] = $pqa->GetVar("answerid");	
}

$res = $pqa->ShowErrors();
$res = str_replace("\n","",$res);

echo $res;
?>