<?php 


pagination("post",10);
$query = mysqli_query($dbh,"SELECT * FROM post LIMIT $limit OFFSET $offset ");




?>
<h2>Article</h2>
<hr>
<table border="1">
	<thead>
		<tr>
			<th>No</th>
			<th>Tanggal</th>
			<th>Judul</th>
			<th>Action</th>
		</tr>
	</thead>

	<tbody>
	<?php

	
	$no = $offset+1;
	while($row = mysqli_fetch_object($query)){

	?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $row->date; ?></td>
			<td><?php echo $row->title; ?></td>
			<td><a href="<?php echo URL.'admin/pages/article_proses.php?action=delete&id='.$row->id; ?>">Hapus</a> | <a href="<?php echo URL.'admin/index.php?module=article_select_data&id='.$row->id; ?>">Edit</a> | <a href="">Unpublish</a> </td>
		</tr>
	<?php } ?>
	</tbody>
</table>


<div id="pagination">
<?php pagination_number("post",10); ?>
</div>
