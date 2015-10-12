<?php
define( '_VALID_DIR_', 1 );

require_once "config.php";

if (!ISSET($_SESSION['userid'])) { header("Location: login.php"); }

require_once "inc/head.php";
require_once "inc/menu_left.php";
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","signout.php"=>"Signout"));
		echo DrawTitleBar();
		?>		
        <div class="content" data-role="content">
			Welcome, <?php echo $_SESSION['username'];?>
			<input value="Browse Public Polls" data-icon="search" data-theme="c" type="button" onClick="document.location.href='poll_browse_public.php'">			
			<input value="Browse My Polls" data-icon="search" data-theme="c" type="button" onClick="document.location.href='browse_my_polls.php'">			
			<input value="Create Poll" data-icon="plus" data-theme="c" type="button" onClick="document.location.href='create.php'">
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

