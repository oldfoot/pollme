<?php

$path = realpath('../');

$objects = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path), RecursiveIteratorIterator::SELF_FIRST);
foreach($objects as $name => $object){
    if (substr($name,-2) != ".." && substr($name,-1) != ".") {
		echo "$name<br />\n";
		echo filesize($name)."<br />\n";
		echo filemtime ($name)."<br />\n";
		
	}
}

?>