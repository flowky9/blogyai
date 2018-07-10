<?php 

session_start();
include("function/connection.php");
include("function/function.php");

$page = isset($_GET['page']) ? $_GET['page'] : false;


 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Blog YAI</title>
	<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
</head>
<body>
	<div id="container">
	<!-- HEADER -->
	<?php include("include/header.php"); ?>
	<div id="content-wrapper">
	<!-- SIDEBAR -->
	<?php include("include/sidebar.php"); ?>	
	<!-- MAIN PAGES -->
	<?php 

		$filename = "pages/$page.php";
		if(file_exists($filename)){
			include($filename);
		}else if($page == false){
			include("pages/latest-post.php");
		}else {
			echo "Halaman yang anda cari tidak ada";
		}

	 ?>
	</div>
			<!--- FOOTER -->
			<div id="footer">
				copyright &copy; 2017 Nauval, Syaidi, Joe, Fyan - Teknologi WEB 2018 - YAI
			</div>
	</div>


</body>
</html>