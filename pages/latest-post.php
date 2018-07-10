<?php

pagination("post",6);

$dosearch = "";

if(isset($_GET['search'])){

    $search = $_GET['search'];

    // echo $search;

    $dosearch = " AND post.title LIKE '%$search%' ";

}

$query = mysqli_query($dbh,"SELECT post.*,category.category_name FROM post JOIN category ON post.category_id = category.id WHERE post.status = 0 $dosearch LIMIT $limit OFFSET $offset");
if(mysqli_num_rows($query)> 0){
	while($row = mysqli_fetch_object($query)){

?>

<div class="post">
	<a href="index.php?page=detail&id=<?php echo $row->id; ?>"><h1><?php echo $row->title; ?></h1></a>
	<em><?php echo $row->date; ?></em><a class="category" href="index.php?page=category_post" class="category"><?php echo $row->category_name; ?></a>
	<div id="thumbnail-post">
		<img src="assets/img/<?php echo $row->image; ?>" alt="" width="100" height="100">
		<p><?php echo trim_words($row->description); ?></p>
		</div>
</div>
<?php } } ?>

<div id="pagination">
	<?php pagination_number_home("post",6); ?>
</div>
<script src="script/jquery.min.js"></script>
<script src="script/jquery.slides.min.js"></script>

  <script>
    $(function() {
      $('#slides').slidesjs({
        width: 940,
        height: 528,
        navigation: false
      });
    });
  </script>

