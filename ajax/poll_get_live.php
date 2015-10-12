<?php 
define( '_VALID_DIR_', 1 );
require_once "../config.php";

require "../classes/poll_question_master.php";

// This is just an example of reading server side data and sending it to the client.
// It reads a json formatted text file and outputs it.

//$string = file_get_contents("sampleData.json");

$chart = "bar";

$data = "";

$code = CleanVar($_GET['code']);

$pqm = new PollQuestionMaster;
//$pqm->SetVar("debug",true);
$pqm->SetVar("friendlycode",$code);
$pollid = $pqm->GetPollIDFromFriendlyCode();

$sql = "CALL sp_poll_answer_count($pollid)";
$result = $GLOBALS['db']->Query($sql);
if ($GLOBALS['db']->AffectedRows($result) > 0) {	
	while ($row = $GLOBALS['db']->FetchArray($result)) {
		$data .= $row['total'].",";		
	}
}
$data = substr($data,0,-1);
echo $data;
?>