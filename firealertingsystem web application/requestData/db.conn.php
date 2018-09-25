<?php
$hostName = 'localhost';
$userName = 'root';
$password = '';
$dbName = 'firesafty';
$connect = mysqli_connect($hostName,$userName,$password,$dbName);
if($connect)
{
    //Then proceeds further
    
}
else
{
  
?>
<center>
    <h1 style = "color: orange"><p>Oops! Something is wrong</p></h1>
    <h3><p>Make sure You are connected with Internet</p></h3>
    <p>If Problems continue contect the page admin </p>
</center> 
<?php 
}
?>