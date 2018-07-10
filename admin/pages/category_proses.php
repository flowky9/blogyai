<?php

include("../../function/connection.php");
include("../../function/function.php");

global $dbh;

$action = $_GET['action'];
$id = isset($_GET['id']) ? $_GET['id'] : false;

if($action == "input"){
	$category = isset($_POST['category']) ? $_POST['category'] : false;

	if($category != false){
		$query = mysqli_query($dbh,"INSERT INTO category VALUES ('','$category')");
		$dbh = null;

		header("location:".URL."admin/index.php?module=category&notif=success");
	}else {
		header("location:".URL."admin/index.php?module=category&notif=failed");
	}

	
}else if($action == "delete"){
	mysqli_query($dbh,"DELETE FROM category WHERE id = '$id' ");
	$dbh = null;
	header("location:".URL."admin/index.php?module=category&notif=success");
}else if($action == "select-data"){

	$query = mysqli_query($dbh,"SELECT * FROM category WHERE id = '$id'");
	$row = mysqli_fetch_object($query);
	$data = $row->category_name;
	header("location:".URL."admin/index.php?module=category&data=".$data."&id=".$id);

}else if($action == "update"){
	$category = isset($_POST['category']) ? $_POST['category'] : false;
	$idUpdate = isset($_POST['idUpdate']) ? $_POST['idUpdate'] : false;
	$query = mysqli_query($dbh,"UPDATE category SET category_name	= '$category' WHERE id = '$idUpdate' ");
	header("location:".URL."admin/index.php?module=category&notif=success");
	if(!$query){
		print_r($dbh->errorInfo());
	}
}


?>