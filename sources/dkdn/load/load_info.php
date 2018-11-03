<?php 
	$d->query("select noidung_$lang as noidung from #_info where type='$com'");
	$row = $d->fetch_array();
	echo $row["noidung"]; 
	exit();
?>