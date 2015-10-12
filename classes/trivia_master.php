<?php
/** ensure this file is being included by a parent file */
defined( '_VALID_DIR_' ) or die( 'Direct Access to this location is not allowed.' );

class TriviaMaster {

	public $methods = array("add","edit","delete"); 

	function __construct() {
		/* SET CHECKING TO FALSE */
		$this->parameter_check=False;
		$this->params_add = array("trivianame","triviacode","userlimit","publicprivate","useridcreated");
		$this->vartypes_add = array("userlogin"=>"any","triviacode"=>"any","userlimit"=>"numeric","publicprivate"=>"any","useridcreated"=>"numeric");
		
		$this->params_edit = array("triviaid","trivianame","triviacode","userlimit","publicprivate","useridedited");
		$this->vartypes_edit = array("triviaid"=>"numeric","userlogin"=>"any","triviacode"=>"any","userlimit"=>"numeric","publicprivate"=>"any","useridedited"=>"numeric");
				
		$this->params_del = array("userid","triviaid");
		$this->vartypes_del = array("userid"=>"numeric","triviaid"=>"numeric");
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
		if (!ISSET($this->triviaid) || !IS_NUMERIC($this->triviaid)) { $this->Errors("Invalid Params"); return false; }
		$db=$GLOBALS['db'];
		$sql="CALL sp_trivia_master_browse('".$this->triviaid."')";
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
		$this->debug("Add Method, trivia object");
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
		$sql = "call sp_trivia_master_add($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(1));
			return false;				
		}
		else {
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$this->triviaid = $row['TriviaID'];
			}				
			$this->Errors(MessageCatalogue(75));
			return true;				
		}
		$this->Errors(MessageCatalogue(76));		
	}
	public function Edit() {
		$this->debug("Edit Method, trivia object");
		if (!$this->CheckVarsSet("edit")) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		
		if (!$this->CheckVars($this->vartypes_edit)) {
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
		$sql = "call sp_trivia_master_edit($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(94));
			return false;				
		}
		else {
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$this->triviaid = $row['TriviaID'];
			}				
			$this->Errors(MessageCatalogue(95));
			return true;				
		}
		$this->Errors(MessageCatalogue(94));		
	}
	
	public function Delete() {
		$this->debug("Del Method, trivia object");
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
		$sql = "call sp_trivia_master_delete($sp_params)";
		$this->debug($sql);
		$result = $GLOBALS['db']->Query($sql);
		if (!$result) {
			$this->Errors(MessageCatalogue(88));
			return false;				
		}
		else {			
			$this->Errors(MessageCatalogue(89));
			return true;				
		}
		$this->Errors(MessageCatalogue(88));		
	}
	public function GetTriviaIDFromCode() {
		$this->debug("Get Trivia Code");
		if (!ISSET($this->triviacode)) {
			$this->debug("Failed to provide correct params");
			return false;
		}
		$sql="CALL sp_trivia_master_id_from_code('".$this->triviacode."')";
		$this->debug($sql);		
		$result = $GLOBALS['db']->Query($sql);
		if ($GLOBALS['db']->NumRows($result) > 0) {
			while($row = $GLOBALS['db']->FetchArray($result)) {
				$this->triviaid = $row['TriviaID'];
				return $row['TriviaID'];
			}
		}
		$this->debug("Not found");
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