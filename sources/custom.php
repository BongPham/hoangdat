<?php 

	$d->reset();
	$sql_banner_top= "select photo_vi from #_photo where type='logo'";
	$d->query($sql_banner_top);
	$logo_top = $d->fetch_array();

	// $d->reset();
	// $sql= "select photo_vi from #_photo where type='banner'";
	// $d->query($sql);
	// $banner = $d->fetch_array();

	$d->reset();
	$sql = "select id,ten_$lang,tenkhongdau from #_product_list where hienthi=1 and type='product' order by stt asc";
	$d->query($sql);
	$rs_list = $d->result_array();

	$d->reset();
	$sql = "select id,ten_$lang,tenkhongdau from #_baiviet where hienthi=1 and type='tintuc' order by stt asc";
	$d->query($sql);
	$rs_tintuc = $d->result_array();

	$d->reset();
	$sql = "select id,ten_$lang,tenkhongdau from #_baiviet where hienthi=1 and type='tintuc' order by stt asc";
	$d->query($sql);
	$rs_tintuc = $d->result_array();

	$d->reset();
	$sql_slider = "select id,thumb,photo_vi,link from #_photo where hienthi=1 and type='slider' order by stt asc";
	$d->query($sql_slider);
	$result_slider = $d->result_array();

	$d->reset();
	$sql = "select noidung_vi from #_company where type='footer' ";
	$d->query($sql);
	$footer = $d->fetch_array();

?>