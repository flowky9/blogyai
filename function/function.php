<?php 

define("URL", "http://localhost/blogyai/");

	function tgl_indonesia($date){
	 	$hari = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
	 	$bulan = array("Januari","Februari","Mart","April","Juni","Juli","Agustus","September","Oktober","November","Desember");
	 	$thn = substr($date,0,4);
		$bln = substr($date,5,2);
		$tgl = substr($date,8,2);
		$waktu = substr($date,11,5);
		$hr = date("w",strtotime($date));

		$result = $hari[$hr].", ". $tgl." ".$bulan[(int)$bln-1].' '.$thn.' '.$waktu.' WIB';
		return $result;
 	}

 	function admin_only($module,$level){
 		if($level != "superadmin"){
			$array_pages = array("kategori","barang","kota","user","banner");
			if(in_array($module, $array_pages)){
				header("location:".BASE_URL);
			}
		}
 	}

 	function replace_kalimat($kata){
 		$kalimat = strtolower(str_replace(" ", "-", $kata));
 		return $kalimat;
 	}

 	function pagination($table,$limit_post){
 		global $dbh,$limit,$offset;
 		$pages = isset($_GET['pages']) ? $_GET['pages'] : 1 ;
		// $count_row = mysqli_query($dbh,"SELECT * FROM $table");
		// $total_article = $count_row->rowCount();
		$limit = $limit_post;
		$offset = ($pages-1) * $limit;
		// $total_pages = ceil($total_article / $limit);
		// $pagination = 3;

		return true;
 	}


 	function pagination_number($table,$limit){
 		global $dbh;
 		$pages = isset($_GET['pages']) ? $_GET['pages'] : 1 ;
		$count_row = mysqli_query($dbh,"SELECT * FROM $table");
		$total_article = mysqli_num_rows($count_row);
		$limit = $limit;
		$offset = ($pages-1) * $limit;
		$total_pages = ceil($total_article / $limit);
		$pagination = 3;

		$start_pagination = ($pages > $pagination)? $pages - $pagination : 1; // Untuk awal link number
        $end_pagination = ($pages < ($total_pages - $pagination))? $pages + $pagination : $total_pages; // Untuk akhir link number

		echo "<a href='".URL."admin/index.php?module=article&pages=1'>First | </a>";
		for($i=$start_pagination;$i <= $end_pagination;$i++){
			if($pages == $i){
				$active = "class='active'";
			}else {
				$active = false;
			}
			echo "<a ".$active." href='".URL."admin/index.php?module=article&pages=$i'>$i</a>";
		}

		echo "<a  href='".URL."admin/index.php?module=article&pages=$total_pages'> | Last</a>";

 	}

 	function pagination_number_home($table,$limit){
 		global $dbh;
 		$pages = isset($_GET['pages']) ? $_GET['pages'] : 1 ;
		$count_row = mysqli_query($dbh,"SELECT * FROM $table");
		$total_article = mysqli_num_rows($count_row);
		$limit = $limit;
		$offset = ($pages-1) * $limit;
		$total_pages = ceil($total_article / $limit);
		$pagination = 3;
		$start_pagination = ($pages > $pagination)? $pages - $pagination : 1; // Untuk awal link number
        $end_pagination = ($pages < ($total_pages - $pagination))? $pages + $pagination : $total_pages; // Untuk akhir link number
		echo "<a href='".URL."index.php?pages=1'>First | </a>";
		for($i=$start_pagination;$i <= $end_pagination;$i++){
			if($pages == $i){
				$active = "class='active'";
			}else {
				$active = false;
			}
			echo "<a ".$active." href='".URL."index.php?pages=$i'>$i</a>";
		}

		echo "<a  href='".URL."index.php?pages=$total_pages'> | Last</a>";

 	}


 	function trim_words($kalimat){
 		$words = substr($kalimat, 0,250);
 		return $words."...";
 	}




 ?>