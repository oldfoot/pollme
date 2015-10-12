<?php
function DrawMenuLeft($arr) {
	$c = "<div class=\"panel left\" data-role=\"panel\" data-position=\"left\" data-display=\"push\" id=\"panel-01\">\n";
		$c .= "<ul>\n";
			foreach ($arr as $key=>$val) {
				$c .= "<li class=\"profile\"><a href=\"$key\" title=\"$val\">$val</a></li>\n";
			}
			$c .= "<li class=\"profile\"><a href=\"http://terencelegrange.com/wiki/doku.php?id=wiki:pollme\" title=\"Help\">Help</a></li>\n";			
		$c .= "</ul>\n";
	$c .= "</div>\n";		
	return $c;	
}
function DrawTitleBar() {
	$c = "<div class=\"header\" data-role=\"header\">\n";
		$c .= "<span class=\"open left\"><a href=\"#panel-01\">&#61641;</a></span>\n";
		$c .= "<span class=\"title\">".$GLOBALS['site_title']."</span>\n";
		//$c .= "<span class=\"open right\"><a href=\"#panel-02\">&#9776;</a></span>\n";
	$c .= "</div>\n";
	return $c;
}
function DrawMenuRight($arr=array("Joe Soap"=>"online.jpg")) {
	$c = "<div class=\"panel right\" data-role=\"panel\" data-position=\"right\" data-display=\"overlay\" id=\"panel-02\">\n";
		$c .= "<ul>\n";
			foreach ($arr as $key=>$val) {
				$c .= "<li><a href=\"#\" title=\"$key\"><span class=\"avatar\"><img src=\"img/$val\" width=\"30\" height=\"30\"></span>$key</a></li>\n";        		
			}
        $c .= "</ul>\n";
    $c .= "</div>\n";
	return $c;
}
?>