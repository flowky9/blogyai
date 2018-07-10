<?php

include_once("function/connection.php");

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];
$gender = $_POST['gender'];
$tempatlahir = $_POST['tempatlahir'];
$tanggallahir = $_POST['tanggallahir'];
$alamat = $_POST['alamat'];
$pekerjaan = $_POST['pekerjaan'];

if($username == "" || $email == "" || $password == "" || $gender == "" || $tempatlahir == "" || $tanggallahir == "" || $alamat == "" || $pekerjaan == "" ){
	header("location:index.php?page=register&notif=true");
}else {
	$password = md5($_POST['password']);
	$queryResult = mysqli_query($dbh,"INSERT INTO user VALUES ('','$username','$email','$password',0,'$gender','$tempatlahir','$tanggallahir','$alamat','$pekerjaan')");

	if($queryResult){
		header("location:admin/login.php");	
	}
}



?>