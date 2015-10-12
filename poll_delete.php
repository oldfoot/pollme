<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }
if (!ISSET($_SESSION['pollid'])) { header("Location:index.php"); }

require_once "classes/poll_question_master.php";

$pqm = new PollQuestionMaster;
//$pqm->SetVar("debug",true);
$pqm->SetVar("userid",$_SESSION['userid']);
$pqm->SetVar("pollid",$_SESSION['pollid']);
$pqm->Delete();			
header("location: browse_my_polls.php");
?>