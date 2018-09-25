<?php
$TempMod1 = $_GET['field1'];
if(!empty($TempMod1))
{
    $hostName = 'localhost';
    $userName = 'root';
    $password = '';
    $dbName = 'firesafty';
	$connect = mysqli_connect($hostName,$userName,$password,$dbName);
    if($connect)
    {
        $x = mysqli_query($connect,"INSERT INTO `temprature`( `temp_each_sec`) VALUES ('$TempMod1')");
        
        if($x)
        {
            echo 'okkk';
        }
        else
            echo 'not ok';
    }
}
else {
	echo 'not comming';
}
?>