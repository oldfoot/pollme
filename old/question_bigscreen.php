<?php
define( '_VALID_DIR_', 1 );
require_once "config.php";

if (!ISSET($_SESSION['triviaid'])) {
	if (!ISSET($_GET['triviaid']) || !IS_NUMERIC($_GET['triviaid'])) { header("Location:index.php"); }
	$_SESSION['triviaid'] = $_GET['triviaid'];
}

require_once "inc/head.php";

require_once "classes/trivia_question_master.php";
?>
<body>
	<center>
	<div data-role="page">
		<script>
			function showHideNextQ(v) {
				if (v == "show") {
					$("#nextQuestion").show();
				}
				else {
					$("#nextQuestion").hide();
				}
			}
			
			var siID;
			var curQ = 0; // SET THE CURRENT QUESTION
			//$(document).bind('pageinit', function () {
			$(document).on("pagecreate",function(event){
				//alert('starting');
				siID = setInterval(checkBigscreenQuestionCount,4000);
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
				siID = setInterval(checkBigscreenQuestionCount,4000);
			}
			function checkBigscreenQuestionCount() {
				//alert('checking now...');
				
				$.get( "ajax/trivia_bigscreen_question_count.php", function( data ) {
					//alert(data);
					if (data != curQ) {
						//alert('about to refresh');
						location.href = "question_bigscreen.php";
						//showHideNextQ('show');
						//$("#nextQuestionText").hide();
						curQ = data;
					}
					else {
						if (data == 0) {
							//location.href = "question_bigscreen.php";
						}
						//						
					}
					//ShowResponse( "Data Loaded: *" + data + "*" + Math.random());
				});				
			}			
			function redirectWait() {
				//location.href = "question.php";
			}
			
		</script>
        <div class="content" data-role="content">
			<div style='font-size:xx-large;color:#336699'>Question</div>
			<hr />
            <?php	
			$status = "closed";
			
			$sql = "CALL sp_trivia_questions_bigscreen(".$_SESSION['triviaid'].")";
			//echo $sql;
			$result = $GLOBALS['db']->Query($sql);
			if ($GLOBALS['db']->NumRows($result) == 0) {								
				echo "<img src='img/loading1.gif'><br />\n";
				echo "Waiting for question to open...";				
				
			}
			else {				
				while ($row = $GLOBALS['db']->FetchArray($result)) {					
					//echo "<script>StopInterval(siID);</script>\n";
					echo "<div style='font-size:xx-large'>".$row['Question']."</div><br /><hr />\n";
					$questionid = $row['QuestionID'];					
				}				
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
					$count=1;
					while ($row = $GLOBALS['db']->FetchArray($result)) {						
						//echo $row['Answer']."<br/>";
						echo "<div style='font-size:x-large'>".$row['Answer']."</div><br />\n";
						//echo "<div style='font-size:medium'>or</span>";
						echo "<hr />\n";
						$count++;
					}					
				}
				elseif ($questiontype == "sa") {
					// NOTHING TO DISPLAY
				}					
				echo "Points: $points";
			}
			//echo "<div id='nextQuestion'><input value='Next Question' data-icon='arrow-r' data-theme='c' type='button' onClick=\"document.location.href='question.php'\"></div>\n";
			//echo "<div id='nextQuestionText'>No open questions remain</div>\n";			
			?>
        </div>    	
	</div>
	</center>
</body>
</html>

