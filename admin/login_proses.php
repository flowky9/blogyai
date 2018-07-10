<?php

session_start();

include("../function/connection.php");
include("../function/function.php");

$username = $_POST['username'];
$password = MD5($_POST['password']);
$query = mysqli_query($dbh,"SELECT * FROM user WHERE username = '$username' AND password = '$password' ");
$row = mysqli_fetch_object($query);

if(mysqli_num_rows($query) > 0 ){
	$_SESSION['username'] = $row->username;
	$_SESSION['id'] = $row->id;
	// echo $_SESSION['id'];
	// echo $_SESSION['username'];
	// echo "<pre>";
	// print_r($dbh->errorInfo());
	// echo "</pre>";
	header("location:".URL."admin");
}else {

	header("location:".URL."admin/login.php?notif=failed");
}



?>