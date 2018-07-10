<?php

include_once("function/connection.php");

date_default_timezone_set("Asia/Jakarta");

$result["message"] = "";
$post_id = $_POST['post_id'];
$name = $_POST['name'];
$email = $_POST['email'];
$date = date("Y-m-d");

$reply = $_POST['reply'];
$status = "on";


if($email == ""){
	$result["message"] = "Product Name must be fill";
}else {
	$queryResult = mysqli_query($dbh,"INSERT INTO comment VALUES ('','$post_id','$name','$email','$date','$reply','$status')");

	if($queryResult){
		$result["message"] = "Successfully added new comment";
	}else {
		$result["message"] = "Failed added new comment";
	}
}

echo json_encode($result);


?>