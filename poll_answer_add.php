<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
require_once "inc/head.php";
require_once "inc/menu_left.php";

// IF NOT EDITING, REMOVE ANY TRACE OF A TRIVIA ID SESSION
if (ISSET($_GET['answerid'])) {
	$_SESSION['answerid'] = CleanVar($_GET['answerid']);
}
$answer = "";
$button = "Create Answer Now";
// EDIT MODE
if (ISSET($_SESSION['answerid'])) {
	
	require_once $dr."classes/poll_question_answers.php";
	$pqa = new PollQuestionAnswers;
	//$pqa->SetVar("debug",true);	
	$pqa->SetVar("answerid",$_SESSION['answerid']);
	$pqa->SetVar("userid",$_SESSION['userid']);
	$pqa->Info();
	$answer = $pqa->GetVar("Answer");	
	
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
						url:'ajax/poll_question_answer_add.php',
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
							 if (result != null && result.toString() == "Poll option created successfully!"){								
								 location.href = "poll_question_answers.php";
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
			<h3>Poll Options</h3>
			<div id='response'></div>
            <form method="post" id="formcreate" action="#">
				<label for="question">Answer</label>
				<input type="text" name="answer" id="answer" value="<?php echo $answer;?>">				
				<input value="<?php echo $button;?>" data-icon="plus" data-theme="b" type="submit">
			</form>
			<input value="Delete this option" data-icon="delete" data-theme="a" type="button" onClick="document.location.href='poll_question_delete.php'">
			<input value="Back to Poll Options" data-icon="back" data-theme="a" type="button" onClick="document.location.href='poll_question_answers.php'">
			<input value="Back to Poll Config" data-icon="back" data-theme="a" type="button" onClick="document.location.href='poll_config.php'">
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

