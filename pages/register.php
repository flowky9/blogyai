

<div class="post">
<h1 >Daftar</h1>
	<div class="form">
		<?php echo isset($_GET['notif']) ? "<h3 style='color:red'>Form tidak boleh kosong, harus diisi lengkap</h3>" : false; ?>
		<form action="doInsertUser.php" method="post">
			<div class="form-input">
				<label for="">Username : </label>
				<input type="text" name="username">
			</div>
			<div class="form-input">
				<label for="">Email : </label>
				<input type="email" name="email">
			</div>
			<div class="form-input">
				<label for="">Password : </label>
				<input type="password" name="password">
			</div>
			<div class="form-input">
				<label for="">Gender : </label>
			</div>
			<div>
				<input type="radio" name="gender" value="L">Laki-Laki 
	  			<input type="radio" name="gender" value="P">Perempuan 
			</div>
			<div class="form-input">	
				<label for="">Tempat Lahir</label>
				<input type="text" name="tempatlahir" size="50">
			</div>
			<div class="form-input">	
				<label>Tanggal Lahir</label>
				<input type="date" name="tanggallahir" size="37"> dd-mm-yyyy
			</div>
			<div class="form-input">	
				<label>Alamat</label>
				<input type="text" name="alamat" size="50">
			</div>
			<div class="form-input">	
				<label>Pekerjaan</label>
				<input type="text" name="pekerjaan" size="50">
			</div>	

			<div class="form-input">
				<input type="submit" name="submit" value="Daftar">
			</div>
		</form>
	</div>
</div>