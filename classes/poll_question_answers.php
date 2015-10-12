<?php
/** ensure this file is being included by a parent file */
defined( '_VALID_DIR_' ) or die( 'Direct Access to this location is not allowed.' );

class PollQuestionAnswers {

	public $methods = array("add","edit","delete"); 

	function __construct() {
		/* SET CHECKING TO FALSE */
		$this->parameter_check=False;
		$this->params_add = array("pollid","answer","userid");
		$this->vartypes_add = array("pollid"=>"numeric","answer"=>"any","userid"=>"numeric");
		$this->params_edit = array("answerid","pollid","answer","userid");
		$this->vartypes_edit = array("answerid"=>"numeric","pollid"=>"numeric","answer"=>"any","userid"=>"numeric");
		$this->params_del = array("answerid","pollid","userid");
		$this->vartypes_del = array("answerid"=>"numeric","pollid"=>"numeric","userid"=>"numeric");
		$this->errors = "";		
		$this->debug  = false;
	}
	public function GetVar($v) {
		if (ISSET($this->$v)) {
			return $this->$v;
		}
		else {
			return "";
		}
	}	
	public function SetVar($v,$val) {
		$this->$v = $val;
	}	
	public function Info() {
		if (!ISSET($this->answerid) || !IS_NUMERIC($this->answerid) || !ISSET($this->userid) || !IS_NUMERIC($this->userid)) { $this->Errors("Invalid Params"); return false; }
		$db=$GLOBALS['db'];
		$sql="CALL sp_poll_question_answer_browse('".$this->answerid."','".$this->userid."')";
		$this->debug($sql);		
		$result = $db->Query($sql);
		if ($db->NumRows($result) > 0) {
			while($row = $db->FetchArray($result)) {
				/* HERE WE CALL THE FIELDS AND SET THEM INTO DYNAMIC VARIABLES */
				$arr_cols=$db->GetColumns($result);
				for ($i=1;$i<count($arr_cols);$i++) {
					$col_name=$arr_cols[$i];
					$this->$col_name=$row[$col_name];
				}
			}
		}
		else {
			return False;
		}
	}	
	public function Add() {
		$this->debug("Add Method, poll object");
		if (!$this->CheckVarsSet("add")) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		
		if (!$this->CheckVars($this->vartypes_add)) {
			$this->debug("Invalid data types");
			$this->Errors("Invalid data");
			return false;
		}		
		
		$sp_params = "";
		foreach ($this->params_add as $p) {
			$sp_params .= "'".$this->$p."',";
		}		
		$sp_params = substr($sp_params,0,-1);
		// DOES THS USER EXIST?
		$sql = "call sp_poll_question_answer_add($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(104));
			return false;				
		}
		else {
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$this->answerid = $row['AnswerID'];
			}				
			$this->Errors(MessageCatalogue(103));
			return true;				
		}
		$this->Errors(MessageCatalogue(104));		
	}
	public function Edit() {
		$this->debug("Edit Method, poll object");
		if (!$this->CheckVarsSet("edit")) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		
		if (!$this->CheckVars($this->vartypes_add)) {
			$this->debug("Invalid data types");
			$this->Errors("Invalid data");
			return false;
		}		
		
		$sp_params = "";
		foreach ($this->params_edit as $p) {
			$sp_params .= "'".$this->$p."',";
		}		
		$sp_params = substr($sp_params,0,-1);
		// DOES THS USER EXIST?
		$sql = "call sp_poll_question_answer_edit($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(106));
			return false;				
		}
		else {			
			$this->Errors(MessageCatalogue(105));
			return true;				
		}
		$this->Errors(MessageCatalogue(106));		
	}
	
	public function Delete() {
		$this->debug("Del Method, object");
		if (!$this->CheckVarsSet("del")) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		
		if (!$this->CheckVars($this->vartypes_del)) {
			$this->debug("Invalid data types");
			$this->Errors("Invalid data");
			return false;
		}		
		
		$sp_params = "";
		foreach ($this->params_del as $p) {
			$sp_params .= "'".$this->$p."',";
		}		
		$sp_params = substr($sp_params,0,-1);
		// DOES THS USER EXIST?
		$sql = "call sp_poll_question_answer_del($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(90));
			return false;				
		}
		else {			
			$this->Errors(MessageCatalogue(91));
			return true;				
		}
		$this->Errors(MessageCatalogue(90));		
	}
	
	public function ChangeStatus() {
		if (!ISSET($this->questionid) || !ISSET($this->userid) || !ISSET($this->status)) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		$sql = "call sp_trivia_question_status_edit('".$this->userid."','".$this->questionid."','".$this->status."')";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if ($GLOBALS['db']->AffectedRows($result) > 0) {
			$this->Errors(MessageCatalogue(84));
			return true;
		}
		$this->Errors(MessageCatalogue(85));
		return false;				
	}
	public function ChangeBigScreenStatus() {
		if (!ISSET($this->userid) || !ISSET($this->pollid) || !ISSET($this->questionid)) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		$sql = "call sp_trivia_bigscreen_open_question('".$this->userid."','".$this->pollid."','".$this->questionid."')";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if ($GLOBALS['db']->AffectedRows($result) > 0) {
			$this->Errors(MessageCatalogue(96));
			return true;
		}
		$this->Errors(MessageCatalogue(97));
		return false;				
	}
	public function GetPollIDFromFriendlyCode() {
		if (!ISSET($this->friendlycode)) {
			$this->debug("Failed to provide correct params [1]");
			return false;
		}
		$sql = "call sp_poll_pollid_from_friendly_code('".$this->friendlycode."')";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if ($GLOBALS['db']->AffectedRows($result) > 0) {
			//$this->Errors(MessageCatalogue(96));
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$this->pollid = $row['PollID'];
				return $row['PollID'];
			}			
		}
		$this->Errors(MessageCatalogue(98));
		return false;				
	}
	// CHECK VARS ALL SET FOR REQUIRED METHOD
	private function CheckVarsSet($method) {    
		if ($method == "add") {			
			foreach ($this->params_add as $param) {
				if (!ISSET($this->$param)) {
					$this->Errors("Parameter $param not set");
					return False;
				}
			}
		}
		if ($method == "edit") {
			foreach ($this->params_edit as $param) {
				if (!ISSET($this->$param)) {
					$this->Errors("Parameter $param not set");
					return False;
				}
			}
		}
    return True;
  }
  // CHECK VAR TYPES
  private function CheckVars($vartypes) {
	$count = 0;
    foreach ($vartypes as $var=>$type) {	
      if ($type == "a-z" && !preg_match("/^[A-Z0-9._%+-@ ]*$/i",$this->$var)) {                
        $this->Errors($var." needs to contain alpha characters only");
		$this->debug($var." needs to be $type, you provided: ".$this->$var);
        return False;
      }      
      if ($type == "numeric" && !IS_NUMERIC($this->$var)) {
        $this->Errors($this->$var." needs to be numeric");
		$this->debug($var." needs to be $type, you provided: ".$this->$var);
        return False;        
      }
	  if ($type == "email" && !preg_match("/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i",$this->$var)) {
        $this->Errors($var." needs to be an email address, you provided: ".$this->$var);
		$this->debug($var." needs to be $type, you provided: ".$this->$var);
        return False;        
      }
	  // for any
	  return true;
	  $count++;
    }
    return True;
  }

	function Errors($err) {
		$this->errors.=$err."\n";
	}

	function ShowErrors() {
		return $this->errors;
	}
	private function debug($msg) {
		if ($this->debug) {
			echo $msg."<br />\n";
		}
	}
}
?>