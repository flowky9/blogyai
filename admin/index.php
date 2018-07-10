<?php

session_start();

include("../function/connection.php");
include("../function/function.php");
$module = isset($_GET['module']) ? $_GET['module'] : false;
$user  = isset($_SESSION['id']) ? $_SESSION['id'] : false;

if(!$user){
	header("location:".URL."admin/login.php");
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin</title>
	<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
</head>
<body>
	<div id="leftSection">
			
		<div id="menu">
		<!-- MENU -->
		<?php include("include/menu.php"); ?>
		</div>
	</div>

	<div id="rightSection">
	<!--  KONTEN -->
		<?php

			$filename = "pages/$module.php";
			if(file_exists($filename)){
				include($filename);
			}else if($module == false){
				include("pages/category.php");
			}else {
				echo "file yang anda cari tidak ada";
			}

		?>
	</div>
</body>
</html>