<?php if(!defined('_source')) die("Error");
	@$id=  addslashes($_GET['id']);
	if(!isset($_SESSION['login_web'])){
		//chưa đăng nhập
		transfer("Chưa đăng nhập!","http://".$config_url."/dang-nhap.html",false);
	}
	//
	if($id!=''){
		$title_cat = "Chi Tiết Đơn Hàng ".$id;
		//chi tiết lược sử
		$sql="select * from #_order where hienthi=1 and id_thanhvien='".$_SESSION['login_web']["id"]."' and madonhang='".$id."'";
		$d->query($sql);
		$row_detail = $d->fetch_array();
		if($row_detail==null){
			transfer("Không Tìm Thấy Đơn Hàng Của Bạn!","http://".$config_url."/luoc-su.html",false);
		}
		//
	}else{
		$title_cat = "Lược Sử Đơn Hàng";
		//tổng quan lược sử
		$sql="select * from #_order where hienthi=1 and id_thanhvien=".$_SESSION['login_web']["id"]." order by id desc ";
		$d->query($sql);
		$luocsu = $d->result_array();
	}

?>