<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";
require_once "inc/head.php";
require_once "inc/menu_left.php";

if (!ISSET($_GET['code'])) { die("Invalid Poll"); }

require_once $dr."classes/poll_question_master.php";

$code = CleanVar($_GET['code']);

// GET THE ID
$pqm = new PollQuestionMaster;
$pqm->SetVar("friendlycode",$code);
$pollid = $pqm->GetPollIDFromFriendlyCode();

// GET THE QUESTION
//$pqm->SetVar("debug",true);
$pqm->SetVar("pollid",$pollid);
$pqm->Info();
$question = $pqm->GetVar("Question");

?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","poll_config.php"=>"Poll Config","signout.php"=>"Logout"));
		echo DrawTitleBar();
		?>
		<script>
			function DoAnswer(v) {
						
				$.ajax({
					type:'post',
					url:'ajax/poll_answer.php?code=<?php echo $code;?>&id='+v,					
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
						 //if (result != null && result.toString() == "You voted successfully!"){
							 //location.href = "poll_question_answers.php";
						//}							
						 return true;							 	 
					}
				});
			};
			function ShowResponse(resp) {					
				$("#response" ).text(resp).show();
			};
		</script>
		
        <div class="content" data-role="content">
			<h3><?php echo $question;?></h3>
			<div id='response'></div>
            <?php			
			$sql = "CALL sp_poll_question_answers_browse('".$pollid."')";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {
				echo "<li>No options configured</li>";;
			}
			while ($row = $GLOBALS['db']->FetchArray($result)) {
				$dataicon = "arrow-r";
				$datatheme = "c";
								
				echo "<li><input data-theme='$datatheme' data-icon='$dataicon' type='button' value='".$row['Answer']."' onClick=\"DoAnswer(".$row['AnswerID'].")\"/></li>\n";;
			}
			?>
			<br /><hr /><br />
			<input value="Create your own poll" data-icon="back" data-theme="b" type="button" onClick="document.location.href='poll_config.php'">
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

