<?php

define( '_VALID_DIR_', 1 );
require "../config.php";

require_once $dr."classes/core_usermaster.php";

if (!ISSET($_POST['userlogin']) || !ISSET($_POST['password'])) { die("Invalid Params"); }
$username = CleanVar($_POST['userlogin']);
$password = CleanVar($_POST['password']);

$um = new UserMaster;
//$um->SetVar("debug",true);
$um->SetVar("userlogin",$username."@localhost.com");
$um->SetVar("password",$password);

// exists
if ($um->Exists()) {
	$result = $um->Login();
}
else {
	$um->SetVar("fullname",$username);
	$result = $um->Add();
	
}

if ($result) {
	//echo "Setting session";
	$_SESSION['userid'] = $um->GetVar("userid");
	$_SESSION['username'] = $username;
}
$res = $um->ShowErrors();
$res = str_replace("\n","",$res);

echo $res;

?>