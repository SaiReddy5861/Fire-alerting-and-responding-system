<?php
if(isset($_POST['getTemprature']))
{

    include('../../requestData/db.conn.php');
    $TempMod = $_POST['getTemprature'];
    


    for($i=1; $i<=(int)$TempMod; $i++)
    {

        
        $TableSelect = "SELECT * FROM temprature WHERE sno = ANY (SELECT MAX(sno) FROM temprature)";
        
        
        $TableConnect = mysqli_query($connect,$TableSelect);
      
        
        $ConnectRow = mysqli_fetch_array($TableConnect);
        
        $value = (int)$ConnectRow['temp_each_sec'];
        
        if($value <= 40)
        {
            echo '<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"   style="width:'.$value.'%">'.$value.'\'C Good</div>';     
            
        }
        else
        if($value > 40 and $value<=50)
        {
            echo '<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" id = "blinkingWaring" style="width:'.$value.'%">'.$value.'\'C</div>
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
            echo '<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" id= "blinkingDanger" style="width:'.$value.'%">'.$value.'\'C DANGER</div>
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
