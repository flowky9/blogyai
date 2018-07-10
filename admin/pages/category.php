<?php

$dataValue = isset($_GET['data']) ? $_GET['data'] : false;

?>

<h2>Categories</h2>
<hr>
<form action="<?php if(isset($_GET['data'])) { echo URL.'admin/pages/category_proses.php?action=update'; }else{ echo URL.'admin/pages/category_proses.php?action=input'; } ?>" method="POST">
	<div id="form-input">	
		<input type="text" name="category" value="<?php echo $dataValue; ?>">	
		<input type="hidden" name="idUpdate" value="<?php echo $_GET['id']; ?>">	
	</div>
	<?php 

		if(isset($_GET['data'])){
			echo "<button>Update</button>";
		}else {
			echo "<button>Submit</button>";
		}

	 ?>
</form>
<div id="listCategory">	
	<ul>
	<?php 

		$query = mysqli_query($dbh,"SELECT * FROM category ORDER BY category_name ASC ");

		if(mysqli_num_rows($query) > 0 ){
			while($row = mysqli_fetch_object($query)){

			
		

	?>
		<li><?php echo $row->category_name; ?> <em><a href="<?php echo URL.'admin/pages/category_proses.php?action=delete&id='.$row->id;?>">Delete</a> | <a href="<?php echo URL.'admin/pages/category_proses.php?action=select-data&id='.$row->id;?>">Update</a></em></li>
	<?php }}else {
		echo "Saat ini belum ada kategori yang tersedia";
		} ?>
	</ul>
</div>	