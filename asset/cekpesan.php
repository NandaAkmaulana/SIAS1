<?php
$server = "localhost"; //
$username = "root";  //
$password = "root"; //
$database = "smsgateway_cilegon";

$konek = ($GLOBALS["___mysqli_ston"] = mysqli_connect($server,  $username,  $password)) or die ("Gagal konek ke server mysql" .mysqli_error($GLOBALS["___mysqli_ston"]));
$bukadb = mysqli_select_db($GLOBALS["___mysqli_ston"], $database) or die ("Gagal membuka database $database" .mysqli_error($GLOBALS["___mysqli_ston"]));

$text = "SELECT * FROM inbox WHERE Processed='true' order by ID DESC";		
$tot_hal = mysqli_query($GLOBALS["___mysqli_ston"], $text);		
$msg = mysqli_num_rows($tot_hal);
if($msg>0){
	echo $msg;
}else{
	echo 0;
}
?>
