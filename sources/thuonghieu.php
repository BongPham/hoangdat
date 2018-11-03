<?php  if(!defined('_source')) die("Error");

		
		@$idl =  addslashes($_GET['idl']);
		@$id=  addslashes($_GET['id']);
		$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
		#các sản phẩm khác======================

		if($id!=''){

	
			$d->reset();
			$sql = "select id, ten_vi from #_baiviet where hienthi=1 and tenkhongdau = '".$id."' and type='".$type_bar."'";
			$d->query($sql);
			$thuonghieu_list = $d->fetch_array();


			$per_page = 16; // Set how many records do you want to display per page.
			$startpoint = ($page * $per_page) - $per_page;
			$limit = ' limit '.$startpoint.','.$per_page;
			
			$where = " #_product where hienthi=1 and id_thuonghieu = ".$thuonghieu_list['id']." and type='product'";

			$sql = "select ten_$lang,id,thumb,mota_$lang,giacu,giaban,tenkhongdau,noidung_$lang,photo, id_thuonghieu from $where $limit";
			$d->query($sql);
			$product = $d->result_array();

			$url = getCurrentPageURL();
			$paging = pagination($where,$per_page,$page,$url);

			$title_detail = $thuonghieu_list['ten_'.$lang];
			$title_bar .= $row_detail['title'];
			$keyword_bar .= $row_detail['keywords'];
			$description_bar .= $row_detail['description'];

		}elseif($mucgia!= ''){
			$d->reset();
		    $sql_gia="select id,ten,giatu, giaden from #_giasearch where id = '".$mucgia."' order by id";
		    $d->query($sql_gia);
		    $giasearch = $d->fetch_array();

		    $per_page = 16; // Set how many records do you want to display per page.
			$startpoint = ($page * $per_page) - $per_page;
			$limit = ' limit '.$startpoint.','.$per_page;
			
			$where = " #_product where hienthi=1 and type='".$type_bar."' and giaban > '".$giasearch['giatu']."' and giaban < '".$giasearch['giaden']."'  order by stt,ngaytao desc";

			$sql = "select ten_$lang,id,thumb,mota_$lang,giacu,giaban,tenkhongdau,photo from $where $limit";
			$d->query($sql);
			$product = $d->result_array();

			$url = getCurrentPageURL();
			$paging = pagination($where,$per_page,$page,$url);

			$title_detail = "Sản phẩm"  ;
			$title_bar .= $row_detail['title'];
			$keyword_bar .= $row_detail['keywords'];
			$description_bar .= $row_detail['description'];
		}else{

			$per_page = 16; // Set how many records do you want to display per page.
			$startpoint = ($page * $per_page) - $per_page;
			$limit = ' limit '.$startpoint.','.$per_page;
			
			$where = " #_product where hienthi=1 and type='product'";

			$sql = "select ten_$lang,id,thumb,mota_$lang,giacu,giaban,tenkhongdau,noidung_$lang,photo, id_thuonghieu from $where $limit";
			$d->query($sql);
			$product = $d->result_array();

			$url = getCurrentPageURL();
			$paging = pagination($where,$per_page,$page,$url);

			$title_detail = "Thương hiệu";
			$title_bar .= "Thương hiệu";
			$keyword_bar .= $row_detail['keywords'];
			$description_bar .= $row_detail['description'];

		}
		
		if(!empty($_POST)&&isset($_POST['dangky'])){

		$data['email'] = $_POST['email'];
		$data['tieude'] = $_POST['tieude'];
		$data['ten'] = $_POST['ten'];
		$data['noidung'] = $_POST['noidung'];
		$data['sanpham'] = $_POST['sanpham'];
		$data['ngaytao'] = time();
		$d->setTable('nhanmail');
		if($d->insert($data))
			transfer("Bạn đã đăng ký thành công<br/>Cảm ơn", "san-pham.html");
		else
			transfer("Lưu dữ liệu bị lỗi", "san-pham.html");
		}
		
			
?>