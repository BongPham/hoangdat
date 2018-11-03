<?php
	$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
	$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
	$d = new database($config['database']);
	
	$page = (int)(!isset($_GET["page"]) ? 1 : $_GET["page"]);
	if ($page <= 0) $page = 1;
	
	$d->reset();
	$sql_setting = "select * from #_setting limit 0,1";
	$d->query($sql_setting);
	$row_setting= $d->fetch_array();

	$d->reset();
	$sql_setting = "select * from #_bgweb where type='bgweb' limit 0,1";
	$d->query($sql_setting);
	$row_background= $d->fetch_array();

	$d->reset();
    $sql = "select thumb_$lang from #_photo where type='favicon'";
    $d->query($sql);
    $favicon = $d->fetch_array();
	
	switch($com){

		/*some load ajax*/
		case 'dang-nhap-nhanh':
			echo '<meta charset="UTF-8">';
			$source = "dkdn/load/load_dangnhap";
			$title_cat = $lang_arr["dangnhap"];
			break;
		case 'dang-ky-nhanh':
			echo '<meta charset="UTF-8">';
			$title_cat = $lang_arr["dangky"];
			$source = "dkdn/load/load_dangky";
			break;
		case 'quy-dinh-mua-hang':
			echo '<meta charset="UTF-8">';
			$title_cat = $lang_arr["quydinhmuahang"];
			$source = "dkdn/load/load_quydinhmuahang";
			break;
		case 'dieu-khoan-dang-ky':
			echo '<meta charset="UTF-8">';
			$source = "dkdn/load/load_info";
			break;
		/*some load ajax*/
		/*tai khoan*/
		case 'dang-ky':
			$source = "dkdn/dangky";
			$template = "dkdn/dangky";
			$title_cat = $lang_arr["dangky"];
			$title = $title_cat." | ".$title;
			break;
		case 'dang-nhap':
			$source = "dkdn/dangnhap";
			$template = "dkdn/dangnhap";
			$title_cat = $lang_arr["dangnhap"];
			$title = $title_cat." | ".$title;
			break;
		case 'quen-mat-khau':
			$source = "dkdn/quenmatkhau";
			$template = "dkdn/quenmatkhau";
			$title_cat = $lang_arr["quenmatkhau"];
			$title = $title_cat." | ".$title;
			break;
		case 'lay-lai-mat-khau':
			$source = "dkdn/laylaimatkhau";
			$template = "dkdn/laylaimatkhau";
			$title_cat = $lang_arr["laylaimatkhau"];
			$title = $title_cat." | ".$title;
			break;		
		case 'doi-mat-khau':
			$source = "dkdn/doimatkhau";
			$template = "dkdn/doimatkhau";
			$title_cat = $lang_arr["doimatkhau"];
			$title = $title_cat." | ".$title;
			break;
		case 'tai-khoan':
			$source = "dkdn/taikhoan";
			$template = "dkdn/taikhoan";
			$title_cat = $lang_arr["taikhoan"];
			$title = $title_cat." | ".$title;
			break;
		case 'kich-hoat-mail':
			$source = "dkdn/kichhoatmail";
			break;
		case 'dang-xuat':
			$source = "dkdn/dangxuat";
			break;
		/*tai khoan*/



		case 'video':
			$source = "video";
			$template = isset($_GET['id']) ? "video_detail" : "video";
			break;
			
		case 'ban-do':
			$source = "map";
			$template ="map";
			break;
		case 'download':
			$source = "download";
			$template = isset($_GET['id']) ? "download_detail" : "download";
			$type_bar = 'download';
			$title_detail = "Download";
			break;
		case 'thu-vien-anh':
			$source = "album";
			$template = isset($_GET['id']) ? "album_detail" : "album";
			$type_bar = 'album';
			$title_detail = "Thư viện ảnh";
			break;
		case 'site-map':
			$source = "sitemap";
			$template ="sitemap";
			break;
		case 'tuyen-dung':
			$source = "about";
			$template = "about";
			$title_detail = _tuyendung;
			$type_bar = 'tuyendung';
			break;

		case 'dang-nhap':
			$source = "login";
			$template ="login";
			break;
		case 'tags':
			$source = "tags";
			$template ="tags";
			break;
		
		case 'hoi-dap':
			$source = "hoidap";
			$template ="hoidap";
			break;
		case 'xuat-khau':
			$source = "about";
			$template = "about";
			$title_detail = _xuatkhau;
			$type_bar = 'xuatkhau';
			break;
		
		case 'kiem-tra-don-hang':
			$source = "donhang";
			$template = "donhang";
			$title_detail = "Kiểm tra đơn hàng";
			$type_bar = 'chamsoc';
			break;

		case 'chinh-sach-hoi-vien':
			$source = "about";
			$template = "about";
			$title_detail = _chinhsachhoivien;
			$type_bar = 'hoivien';
			break;

		// case 'hinh-anh':
		// 	$source = "gallery";
		// 	$template = "gallery_detail";			
		// 	break;
			
		case 'gioi-thieu':
			$source = "about";
			$template = "about";
			$type_bar = 'gioithieu';
			$title_detail = _gioithieu;
			break;
		case 'tam-nhin-dinh-huong':
			$source = "about";
			$template = "about";
			$type_bar = 'tamnhin';
			$title_detail = "Tầm nhìn định hướng";
			break;
		case 'tong-quan':
			$source = "about";
			$template = "about";
			$type_bar = 'tongquan';
			$title_detail = " Tổng quan";
			break;
		case 'chinh-sach':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			$type_bar = 'chinhsach';
			$title_detail = "Chính sách mua hàng";
			break;
		case 'dich-vu':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			$type_bar = 'dichvu';
			$title_detail = _dichvu;
			break;
		case 'tin-tuc':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			$type_bar = 'tintuc';
			$title_detail = _tintuc;
			break;
		
		case 'kien-thuc-tieu-dung':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			$type_bar = 'kienthuc';
			$title_detail = " Kiến thức tiêu dùng";
			break;

		case 'cham-soc-khach-hang':
			$source = "news";
			$template = isset($_GET['id']) ? "news_detail" : "news";
			$type_bar = 'chamsoc';
			$title_detail = "Chăm sóc khách hàng";
			break;

		case 'san-pham':
			$source = "product";
			$template = isset($_GET['id']) ? "product_detail" : "product";
			$type_bar = 'product';
			$title_detail = "Sản phẩm";
			break;
		
		case 'thuong-hieu':
			$source = "thuonghieu";
			$template = "thuonghieu";
			$type_bar = 'thuonghieu';
			$title_detail = "Thương hiệu";
			break;
		
		case 'booking':
			$source = "booking";
			$template =isset($_GET['id']) ? "booking_detail" : "booking";
			$title_detail = _booking;
			$type_bar = 'booking';	
			break;	
			
		case 'lien-he':
			$source = "contact";
			$template = "contact";
			break;

		case 'giao-hang-toan-quoc':
			$source = "giaohang";
			$template = "giaohang";
			break;

		case 'giao-hang-nhan-tien':
			$source = "giaohangnt";
			$template = "giaohangnt";
			break;

		case 'doi-tra-hang-trong-10-ngay':
			$source = "doitra";
			$template = "doitra";
			break;

		case 'huong-dan-mua-hang':
			$source = "huongdanmuahang";
			$template = "huongdanmuahang";
			break;
		
		case 'tim-kiem':
			$source = "search";
			$template = "search";
			break;
		case 'gio-hang':
			$source = "giohang";
			$template = "giohang";
			break;	
		case 'thanh-toan':
			$source = "thanhtoan";
			$template = "thanhtoan";
			break;
		case 'xac-nhan':
			$source = "xacnhan";
			$template = "xacnhan";
			break;		

		default: 
			$source = "index";
			$template = "index";
			break;
	}
	
	if($source!="") include _source.$source.".php";
	
	if($_REQUEST['com']=='logout')
	{
	session_unregister($login_name);
	header("Location:index.php");
	}		
?>