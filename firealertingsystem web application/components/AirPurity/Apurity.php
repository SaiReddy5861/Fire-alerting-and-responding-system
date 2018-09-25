<?php
if(isset($_POST['AirPurity']))
{
	include('../../requestData/db.conn.php');

	$purity =(int)$_POST['AirPurity'];

	for($i=1; $i <= $purity; $i++)
	{
		$airpurity = "SELECT * FROM airpurity WHERE sno = ANY (SELECT MAX(sno) FROM airpurity)";

		$TableConnect = mysqli_query($connect,$airpurity);
            
        $ConnectRow = mysqli_fetch_array($TableConnect);

        $value = (int)$ConnectRow['a_each_sec'];

        if($value <= 40)
        {
            echo '<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"   style="width:'.$value.'%">'.$value.'% Good</div>';     
            
        }
        else
        if($value > 40 and $value<=50)
        {
            echo '<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" id="blinkingWaring"  style="width:'.$value.'%">'.$value.'% warning</div>
            	<audio controls autoplay>
 				  <source src="sound/warning.mp3" type="audio/mpeg">
				</audio>
				<script>
	            function blinker() {
	                $("#blinkingWaring").fadeOut(500);
	                $("#blinkingWaring").fadeIn(500);
	            }
	            setInterval(blinker, 1000);
	            </script>';    
        }
        elseif($value > 50)
        {
            echo '<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" id= "blinkingDanger" style="width:'.$value.'%">'.$value.'% danger</div>
            	<audio controls autoplay>
 				  <source src="sound/danger.mp3" type="audio/mpeg">
				</audio>
            <script>
            function blinker() {
                $("#blinkingDanger").fadeOut(500);
                $("#blinkingDanger").fadeIn(500);
            }
            setInterval(blinker, 1000);
            </script>';
        }


	}
}
?>