<?php

include_once("function/connection.php");

$id = $_GET['post_id'];
$queryResult = mysqli_query($dbh,"SELECT * FROM comment WHERE status = 'on' AND post_id = '$id' ORDER BY id DESC");

$result = array();
while($fetchData = mysqli_fetch_assoc($queryResult)){
		$result[] = $fetchData;
}


echo json_encode($result);


?>