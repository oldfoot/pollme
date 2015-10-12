<?php
/** ensure this file is being included by a parent file */
defined( '_VALID_DIR_' ) or die( 'Direct Access to this location is not allowed.' );

if ($_SERVER['SERVER_NAME'] == "localhost") {
	
	ini_set("include_path", "c:/xampp/htdocs/yourpollmesite/pear/");
	/*Website URL*/
	$wb="http://".$_SERVER['SERVER_NAME']."/yourpollmesite/";
	/*Website Directory*/
	$dr="c:/xampp/htdocs/yourpollmesite/";

	$site_title = "Poll Me [Dev]";
	
	/*Database Type*/
	$database_type="mysql";
	/*Authentication Type*/
	$authentication_type="mysql";
	/*Database Server*/
	$database_hostname="localhost";
	/*Database Port*/
	$database_port="3306";
	/*Database User*/
	$database_user="root";
	/*Database Password*/
	$database_password="root";
	/*Database Name*/
	$database_name="root";
	/*Database Prefix*/
	$database_prefix="root.";
	
	$environment = "dev";	
	
	/*Mail Type either PHP's mail function or SMTP*/
	$mail_type="smtp";
	/*SMTP Server*/
	$smtp_server="smtp.gmail.com";
	$smtp_port=465;
	$smtp_require_auth=true;
	$smtp_user="";
	$smtp_password="";
}
else {
	ini_set("include_path", "/var/yoursite/html/pear");
	/*Website URL*/
	$wb="http://yoursite.com/yourpollmesite";
	/*Website Directory*/
	$dr="/var/yoursite/yourpollmesite/";

	$site_title = "Poll Me";
	
	/*Database Type*/
	$database_type="mysql";
	/*Authentication Type*/
	$authentication_type="mysql";
	/*Database Server*/
	$database_hostname="";
	/*Database Port*/
	$database_port="3306";
	/*Database User*/
	$database_user="";
	/*Database Password*/
	$database_password="";
	/*Database Name*/
	$database_name="";
	/*Database Prefix*/
	$database_prefix="";
		
	$environment = "production";
	
	/*Mail Type either PHP's mail function or SMTP*/
	$mail_type="smtp";
	/*SMTP Server*/
	$smtp_server="smtp.gmail.com";
	$smtp_port=25;
	$smtp_require_auth=false;
	$smtp_user="";
	$smtp_password="";
}

/*Who should emails be sent from?*/
$email_recover_password_from="general@yourpollmesite.com";

/*Register email from*/
$register_email_from="general@yourpollmesitesite.com";

/* OTHER CONFIG */
$register_email_subject = "[yourpollmesite] Registration";
$register_email_body    = "Welcome %username%,
You have been registered for yourpollmesite.com, so please activate your account by clicking here:
".$wb."activate.php?content=login&code=%code% 
%extra%
If you did not register, please ignore this email.

Regards, 
yourpollmesite.com";
							
$forgot_email_subject = "[yourpollmesite] Password Recovery";
$forgot_email_body    = "Hi,

Someone, perhaps you, requested your password to be recovered.
Click on this link ".$wb."index.php?content=reset&code=%code%

If you did not request this, please ignore this email. 

Regards,
yourpollmesite.com";	

$invite_email_subject = "[yourpollmesite] Invitation ";
$invite_email_body    = "Hi,

%friendname%, someone you may know, suggested you join yourpollmesite.com where you can check how good your lottery numbers are.
Click on this link ".$wb."index.php to register and start choosing better numbers

If you do not know this person, please ignore this email.

Regards,
yourpollmesite.com";	
?>
