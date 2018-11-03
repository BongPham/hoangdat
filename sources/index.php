<?php
	$d->reset();
	$sql1 = " select id,mota_$lang,ten_$lang from #_info where type='gioithieu' ";
	$d->query($sql1);
	$row_gioithieu = $d->fetch_array();

	$d->reset();
	$sql2 = " select id,ten_$lang,photo,tenkhongdau from #_album where hienthi=1 and type='album' and noibat<>0 order by stt asc limit 0,4 ";
	$d->query($sql2);
	$row_album = $d->result_array();

	$d->reset();
	$sql3 = " select id,ten_$lang,photo,tenkhongdau,mota_$lang from #_product_list where hienthi=1 and type='product' and noibat<>0 order by stt asc ";
	$d->query($sql3);
	$row_kslist = $d->result_array();

	$d->reset();
	$sql4 = " select id,mota_$lang,ten_$lang,photo,tenkhongdau from #_baiviet where hienthi=1 and type='tintuc' and noibat<>0 order by stt asc ";
	$d->query($sql4);
	$row_tintuc = $d->result_array();

	// if(!empty($_POST)){

	// 	$_SESSTION['ngayden'] = $_POST['ngayden']; //echo $_SESSTION['ngayden'];exit();
	// 	$_SESSTION['ngaydi'] = $_POST['ngaydi'];
	// 	$_SESSTION['sophong'] = $_POST['sophong'];
	// 	$_SESSTION['nguoilon'] = $_POST['nguoilon'];
	// 	$_SESSTION['treem'] = $_POST['treem'];
		
	// }

?>