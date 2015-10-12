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

function ConvertVar($v) {
	$v = str_replace("&#039;","'",$v);
	return $v;
}

$result = $GLOBALS['db']->Query($sql);
if ($GLOBALS['db']->AffectedRows($result) > 0) {	
	while ($row = $GLOBALS['db']->FetchArray($result)) {
		//$data .= "{\"c\":[{\"v\":\"".$row['Answer']."\",\"f\":null},{\"v\":".$row['total'].",\"f\":null}]},\n"; // UNCOMMENT THIS
		$data .= "{\"c\":[{\"v\":\"".ConvertVar($row['Answer'])."\",\"f\":null},{\"v\":0,\"f\":null}]},\n";		
	}
}
$data = substr($data,0,-2);

$row_data = "";

$string = '{
  "cols": [
        {"id":"","label":"Col1","pattern":"","type":"string"},
        {"id":"","label":"Col2","pattern":"","type":"number"}
      ],
  "rows": [
        '.$data.'
      ]
}
';

echo $string;

// Instead you can query your database and parse into JSON etc etc

?>