<?php
define('KEY','tiendaveicor');
define('COD','AES-128-ECB');

define('DB_SERVER','163.123.183.88');
define('DB_USER','admin');
define('DB_PASS' ,'AyLjdRyk');
define('DB_NAME', 'tienda_veicor');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME,17404);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>