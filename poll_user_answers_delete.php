<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php?err=1"); }
if (!ISSET($_SESSION['pollid'])) { header("Location:index.php?err=2"); }
if (!ISSET($_SESSION['answerid'])) { header("Location:index.php?err=3"); }

require_once "classes/poll_question_user_answers.php";

$pqua = new PollQuestionUserAnswers;
//$pqua->SetVar("debug",true);
$pqua->SetVar("userid",$_SESSION['userid']);
$pqua->SetVar("pollid",$_SESSION['pollid']);
$pqua->Delete();			
header("location: poll_config.php");
?>