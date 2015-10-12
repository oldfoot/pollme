<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location:index.php"); }
if (!ISSET($_SESSION['triviaid'])) { header("Location:index.php"); }

require_once "classes/trivia_question_master.php";

$tm = new TriviaQuestionMaster;
//$tm->SetVar("debug",true);
$tm->SetVar("triviaid",$_SESSION['triviaid']);
$tm->SetVar("questionid",$_SESSION['questionid']);
$tm->Delete();			
header("location: trivia_config_questions.php");
?>