<?php
define( '_VALID_DIR_', 1 );
require "../config.php";

require_once $dr."classes/poll_question_user_answers.php";

$_SESSION['id'] = session_id();

if (!ISSET($_SESSION['id']) || !ISSET($_GET['code']) || !ISSET($_GET['id'])) { die("Invalid Params"); }
$code = CleanVar($_GET['code']);
$answerid = CleanVar($_GET['id']);

$pqua = new PollQuestionUserAnswers;
//$pqua->SetVar("debug",true);
$pqua->SetVar("userid",$_SESSION['id']);
$pqua->SetVar("code",$code);
$pqua->SetVar("answerid",$answerid);

$result = $pqua->Add();	

$res = $pqua->ShowErrors();
$res = str_replace("\n","",$res);

echo $res;
?>