

<div id="post-wrapper">
<!--- POST -->
<?php

$id = $_GET['id'];

$query = mysqli_query($dbh,"SELECT post.*, category.category_name FROM post JOIN category ON post.category_id = category.id WHERE post.id = '$id' ");

while($row = mysqli_fetch_object($query)){

?>
	<div class="post">
		<h1><?php echo $row->title;  ?></h1>
		<label for=""><a href=""><?php echo $row->category_name;  ?></a></label>, <em><?php echo tgl_indonesia($row->date);  ?></em>
		<div id="detail-post">
			<img src="assets/img/<?php echo $row->image;  ?>" alt="" width="" height="">
			<p><?php echo $row->description;  ?></p>
			</div>
	</div>
	<?php } ?>
</div>
<div class="title-comment-post">
	<h4>Comment</h4>
</div>
<div id="comment-post-wrapper">
	<div id="comment-post">
	<h4>Nauval Shidqi</h4>
	<em>10 Januari 2018</em>
	<div id="comment-thumbnail-post">
		<p>Artikel yang sangat bermanfaat, Lorem ipsum dolor sit.</p>
	</div>
</div>
</div>

<div id="comment">
	<h2>Leave a Comment</h2>

		<label for="">Nama</label><br>
		<input type="text" name="nama"><br>
		<label for="">Email</label><br>
		<input type="email" name="email"><br>
		<label for="">Comment</label><br>
		<textarea name="comment" id="" cols="10" rows="10"></textarea><br>
		<input type="hidden" name="post_id" value="<?php echo $_GET['id']; ?>" >
		<button onclick="insertData()" >Insert Data</button>

	<div id="error-message">
		
	</div>
</div>
<script src="script/jquery.min.js"></script>
<script>
	loadData();
	function loadData(){
			var dataHandler = $("#comment-post-wrapper");
			var post_id = $("[name='post_id']").val();
			dataHandler.html("");
				$.ajax({
				type : "GET",
				data : "post_id="+post_id,
				url : "doGetComment.php",
				success : function(result){
					var resultObj = JSON.parse(result);
					var dataHandler = $("#comment-post-wrapper");
					$.each(resultObj,function(key,val){
						var newRow = $("<div id='comment-post'>");
						newRow.html("<h4>"+val.name+"</h4><em>"+val.date+"</em><div id='comment-thumbnail-post'>"+val.reply+"</div>");
						dataHandler.append(newRow);

						console.log(val.name);
					
					})
				}
			});
		}

	function insertData(){
		var name = $("[name='nama']").val();
		var email = $("[name='email']").val();
		var comment = $("[name='comment']").val();
		var post_id = $("[name='post_id']").val();

		$.ajax({
			type : "POST",
			data : "name="+name+"&email="+email+"&reply="+comment+"&post_id="+post_id,
			url : "doInsertComment.php",
			success: function(result){
				var resultObj = JSON.parse(result);
				$("#error-message").html(resultObj.message);
				loadData();
				$("[name='nama']").val("");
				$("[name='email']").val("");
				$("[name='comment']").val("");
				$("[name='post_id']").val("");
			}
		});
	}

</script>