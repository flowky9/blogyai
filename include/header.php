			<div id="header">
				<!--- TITLE HEADER -->
				<h1>Blog YAI</h1>
				<!--- MENU -->
				<div id="menu">
					<a href="<?php echo URL."index.php"; ?>">Home</a>
					<a href="<?php echo URL."index.php?page=about-us"; ?>">About Us</a>
					<a href="<?php echo URL."index.php?page=contact-us"; ?>">Contact Us</a>
					<?php 

						if(isset($_SESSION['id'])){
					?>
						<a href="<?php echo URL."admin"; ?>">Administrator</a>
					<?php
						}else {

					?>
						<a href="<?php echo URL."admin/login.php"; ?>">Login</a>
						<a href="<?php echo URL."index.php?page=register"; ?>">Register</a>

					<?php
						}

					 ?>
				</div>
			</div>