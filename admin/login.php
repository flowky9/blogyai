<?php

include("../function/connection.php");
include("../function/function.php");
session_start();

$user  = isset($_SESSION['id']) ? $_SESSION['id'] : false;

if($user){
	header("location:".URL."admin/");
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="css/style_login.css">
	<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
</head>
<body align="center">
	<div id="container-login">
	<div id="login-title">
		<a href="login.php"><h2>Login</h2></a> <h2> | </h2> <a href="<?php echo URL; ?>"><h2>Home</h2></a>
	</div>
		<form method="POST" action="<?php echo URL."admin/login_proses.php"; ?>">
			<?php echo isset($_GET['notif']) ? "<h3 style='color:red'>username / password salah</h3>" : false; ?>
			<div id="form-input-login">
				<label for="">Username</label>
				<input type="text" name="username">	
			</div>
			<div id="form-input-login">
				<label for="">Password</label>
				<input type="password" name="password">
			</div>
			<button>Log In</button>
		</form>

	</div>
</body>
</html>