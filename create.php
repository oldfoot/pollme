<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
require_once "inc/head.php";
require_once "inc/menu_left.php";

// IF NOT EDITING, REMOVE ANY TRACE OF A TRIVIA ID SESSION
if (!ISSET($_GET['edit'])) {
	unset($_SESSION['pollid']);
}
$question = "";
$friendlycode = "";
$answerlimit = "0";
$status1 = "";
$status2 = "selected=''";
$button = "Create Poll Now";
$public1 = "";
$public2 = "selected=''";
// EDIT MODE
if (ISSET($_SESSION['pollid'])) {
	
	require_once $dr."classes/poll_question_master.php";
	$pqm = new PollQuestionMaster;
	$pqm->SetVar("debug",true);
	$pqm->SetVar("pollid",$_SESSION['pollid']);
	$pqm->Info();
	$question = $pqm->GetVar("Question");
	$friendlycode = $pqm->GetVar("FriendlyCode");
	$answerlimit = $pqm->GetVar("AnswerLimit");
	$status = $pqm->GetVar("Status");
	$public = $pqm->GetVar("Public");
	
	if ($status == "open") { $status1 = "selected='yes'"; $status2=""; } else {  $status1=""; $status2 = "selected='yes'"; }
	if ($public == "y") { $public1 = "selected='yes'"; $public2=""; } else {  $public1=""; $public2 = "selected='yes'"; }
	$button = "Save Changes";
}
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","poll_config.php"=>"Poll Config","signout.php"=>"Logout"));
		echo DrawTitleBar();
		?>
		<script>
			$(function() {
				
				$('#formcreate :submit').click(function(e) {
					e.preventDefault();
					var a=$('#formcreate').serialize();
					$.ajax({
						type:'post',
						url:'ajax/poll_question_master_add.php',
						data:a,
						beforeSend:function(){
							//alert('ok');
							ShowResponse('Working...');
						},
						complete:function(){
							//ShowResponse('Done...');
						},
						success:function(result){
							//alert("*"+result+"*");
							 ShowResponse(result);
							 if (result != null && result.toString() == "Poll created successfully!"){								
								 location.href = "browse_my_polls.php";
							}							
							 return true;							 	 
						}
					});
				return true;
				});
				
			});
			function ShowResponse(resp) {					
				$("#response" ).text(resp).show();
			};
		</script>
		
        <div class="content" data-role="content">
			<h3>Create a Poll here</h3>
			<div id='response'></div>
            <form method="post" id="formcreate" action="#">
				<label for="question">Enter the question:</label>
				<input type="text" name="question" id="question" value="<?php echo $question;?>">
				<label for="triviacode">Poll Code (used to share with respondents):</label>
				<input type="text" name="friendlycode" id="friendlycode" value="<?php echo $friendlycode;?>">
				<label for="slider">Max Answers (zero=unlimited):</label>
				<input name="answerlimit" id="answerlimit" min="0" max="999" type="range" value="<?php echo $answerlimit;?>">
				<label for="slider-flip-m">Status:</label>
				<select name="status" id="status" data-role="slider" data-mini="true">
					<option value="open" <?php echo $status1;?>>Open</option>
					<option value="closed" <?php echo $status2;?>>Closed</option>
				</select>
				<label for="slider-flip-m">Public Poll?</label>
				<select name="public" id="public" data-role="slider" data-mini="true">
					<option value="y" <?php echo $public1;?>>Yes</option>
					<option value="n" <?php echo $public2;?>>No</option>
				</select>
				<input value="<?php echo $button;?>" data-theme="a" type="submit">
			</form>
			<input value="Back to Poll Config" data-icon="back" data-theme="b" type="button" onClick="document.location.href='poll_config.php'">
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

