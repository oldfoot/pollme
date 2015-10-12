<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['triviaid'])) {
	if (!ISSET($_GET['triviaid']) || !IS_NUMERIC($_GET['triviaid'])) { header("Location:index.php"); }
	$_SESSION['triviaid'] = $_GET['triviaid'];
}

require_once "inc/head.php";
require_once "inc/menu_left.php";

require_once "classes/trivia_question_master.php";
?>
<body>
	<div class="demo-wrapper" data-role="page">
        <!-- panel 01 -->
        <?php		
		echo DrawMenuLeft(array("index.php"=>"Home","trivia_master_halloffame.php"=>"Leaderboard"));
		echo DrawTitleBar();
		?>
		<script>
			function showHideNextQ(v) {
				if (v == "show") {
					$("#nextQuestion").show();
				}
				else {
					$("#nextQuestion").hide();
				}
			}
			// because jquery caches pages, the DOM keeps the redirect even when you navigate away.
			//checkQuestionCount();
			var siID;
			//$(document).bind('pageinit', function () {
			$(document).on("pagecreate",function(event){
				//alert('starting');
				siID = setInterval(checkQuestionCount,4000);
			});
			$(document).on("pagehide",function(event){
			 clearInterval(siID);
			});
			
						
			$( document ).ready(function() {				
				$("#nextQuestion").hide();
				$("#nextQuestionText").hide();
				
			});
			
			function StopInterval(siID) {
				//alert('stopping refresh');
				clearInterval(siID);
			}
			function StartInterval(siID) {
				//alert('stopping refresh');
				siID = setInterval(checkQuestionCount,4000);
			}
			function checkQuestionCount() {
				//ShowResponse('checking now...');
				//alert('checking now');
				$.get( "ajax/trivia_question_count.php", function( data ) {
					if (data != "0") {
						//location.href = "question.php";
						showHideNextQ('show');
						$("#nextQuestionText").hide();
					}
					else {
						//
						showHideNextQ('hide');
						$("#nextQuestionText").show();
					}
					//ShowResponse( "Data Loaded: *" + data + "*" + Math.random());
				});
				//setInterval(checkQuestionCount,5000);
			}
			$(function() {				
				$('#saanswerform :submit').click(function(e) {
					e.preventDefault();
					var buttonvalue = $(this).val();
					var a=$('#saanswerform').serialize();
					a = a + '&button='+buttonvalue;
					if ($('#answer').val() == "") {
						alert("Enter an answer please");
						return false;
					}
					$.ajax({
						type:'post',
						url:'ajax/trivia_answer.php',
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
							 var patt1=new RegExp("Answer saved successfully!");							 
							//alert(result);
							//alert(patt1.test(result));
							 if (patt1.test(result)){
							 //if (result != null && result.toString() == "Answer saved successfully!"){								
								//alert('ok, next question');
								$("#saanswerform").hide();
								//$("#nextQuestion").show();
								//StartInterval(siID);
								setTimeout(redirectWait,5000);
							}							
							return true;							 	 
						}
					});
				return true;
				});
				
			});
			function ShowResponse(resp) {					
				$("#response").html(resp).show();
			};
			function redirectWait() {
				//location.href = "question.php";
			}
			
		</script>
        <div class="content" data-role="content">
			<h3>Question</h3>
			<div id='response'></div>
            <?php	
			$status = "closed";			
			$sql = "CALL sp_trivia_questions_my(".$_SESSION['userid'].",".$_SESSION['triviaid'].")";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {								
				echo "<img src='img/closed.png'><br />\n";
				echo "Waiting for question to open...!";
				/*
				echo "<script language='javascript'>
					showHideNextQ('hide');
					</script>
					\n";
					*/
				
			}
			else {
				
				while ($row = $GLOBALS['db']->FetchArray($result)) {
					if ($row['Status'] == "closed") {
						echo "<img src='img/closed.jpg'>\n";
						echo "<br />\n";
						echo "Waiting for question to open...";
					}
					else {
						//echo "<script>StopInterval(siID);</script>\n";
						echo $row['Question'];
						$questionid = $row['QuestionID'];
						$status = "open";
					}
				}
				// TRIVIA IS CLOSED
				if ($status != "closed") {
					// FIND OUT STUFF ABOUT THE QUESTION
					$tqm = new TriviaQuestionMaster;
					//$tqm->SetVar("debug",true);
					$tqm->SetVar("questionid",$questionid);
					$tqm->Info();			
					$points = $tqm->GetVar("Points");
					$questiontype = $tqm->GetVar("QuestionType");
					
					if ($questiontype == "mc") {			
						$sql = "CALL sp_trivia_answers(".$questionid.")";
						$result = $GLOBALS['db']->Query($sql);
						echo "<form method='post' id='saanswerform'>\n";
						$count=1;
						while ($row = $GLOBALS['db']->FetchArray($result)) {							
							//echo "<input type=\"hidden\" name=\"answer\" value=\"".$row['Answer']."\">\n";
							echo "<input type=\"hidden\" name=\"questionid\" value=\"$questionid\" id=\"questionid\">\n";
							echo "<input type=\"submit\" name=\"answer\" value=\"".$row['Answer']."\">\n";							
							$count++;
						}
						echo "</form>\n";
					}
					elseif ($questiontype == "sa") {
						echo "<form method='post' id='saanswerform'>\n";
						echo "<input type=\"hidden\" name=\"questionid\" value=\"$questionid\" id=\"questionid\">\n";
						echo "<input type=\"text\" name=\"answer\" id=\"answer\" autocomplete=\"off\">\n";						
						echo "<input type=\"submit\" value=\"Submit Answer\" id=\"submitanswer\">\n";
						echo "</form>\n";
					}					
					echo "Points: $points";
				}
			}
			echo "<div id='nextQuestion'><input value='Next Question' data-icon='arrow-r' data-theme='c' type='button' onClick=\"document.location.href='question.php'\"></div>\n";
			echo "<div id='nextQuestionText'>No open questions remain</div>\n";
			//echo "<div id='nextQuestion' name='nextQuestion'>Redirecting to next question in 5 seconds</div>\n";
			//echo "<input type='button' onClick='checkQuestionCount()' value='Check for new question' />\n";
			?>				
			
        </div>
    	<!-- panel 02 -->
    	<?php 
		echo DrawMenuRight();
		?>
	</div>
</body>
</html>

