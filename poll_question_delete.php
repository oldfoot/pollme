<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php?err=1"); }
if (!ISSET($_SESSION['pollid'])) { header("Location:index.php?err=2"); }
if (!ISSET($_SESSION['answerid'])) { header("Location:index.php?err=3"); }

require_once "classes/poll_question_answers.php";

$pqa = new PollQuestionAnswers;
//$pqa->SetVar("debug",true);
$pqa->SetVar("userid",$_SESSION['userid']);
$pqa->SetVar("pollid",$_SESSION['pollid']);
$pqa->SetVar("answerid",$_SESSION['answerid']);
$pqa->Delete();			
header("location: poll_question_answers.php");
?>