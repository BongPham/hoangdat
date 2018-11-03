<?php
	$type = (isset($_REQUEST['type'])) ? addslashes($_REQUEST['type']) : "";	
	$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
	$act = explode('_',$act);
	// if(count($act>1)){
	// 	$act = $act[1];
	// } else {
	// 	$act = $act[0];
	// }
	switch($type){
		//-------------product------------------
		case 'product':
			switch($act){
				case 'list':
					$title_main = "Danh mục cấp 1";
					$config_images = "true";
					$config_mota= "true";
					$config_noibat= "true";
					@define ( _width_thumb , 270 );
					@define ( _height_thumb , 385 );
					@define ( _style_thumb , 1 );
					$ratio_ = 2;
					break;
				default:
					$title_main = " Sản phẩm";
					$config_images = "true";
					$config_mota= "true";
					$config_list = "true";
					$config_cat = "true";
					$config_item = "true";
					$config_sub = "false";
					$config_km = "false";
					$config_tags = "false";
					$config_mota = "false";
					$config_noibat = "true";
					@define ( _width_thumb , 300 );
					@define ( _height_thumb , 225 );
					@define ( _style_thumb , 1 );
					$ratio_ = 2;
					break;
				}
				@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			break;
		case 'gioithieu':
			$title_main = "Giới thiệu";
			$config_images = "false";
			$config_img = "false";
			$config_mota= "false";
			$config_ten = 'false';
			@define ( _width_thumb , 1366 );
			@define ( _height_thumb , 420 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;
		case 'chinhsach':
			$title_main = " Chính sách";
			$config_images = "false";
			$config_img = "true";
			$config_mota= "false";
			$config_ten = 'true';
			@define ( _width_thumb , 166 );
			@define ( _height_thumb , 133 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;
		case 'dichvu':
			$title_main = "Dịch vụ";
			$config_images = "true";
			$config_mota= "true";
			$config_noibat = "false";
			$config_ten = 'true';
			$config_list = "false";
			$config_cat = "false";
			$config_item = "false";
			$config_sub = "false";
			@define ( _width_thumb , 166 );
			@define ( _height_thumb , 133 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 3;
			break;
		case 'tintuc':
			$title_main = "Tin tức";
			$config_images = "true";
			$config_mota= "true";
			$config_noibat = "true";
			$config_ten = 'true';
			$config_list = "false";
			$config_cat = "false";
			$config_item = "false";
			$config_sub = "false";
			@define ( _width_thumb , 166 );
			@define ( _height_thumb , 133 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 3;
			break;
		case 'chamsoc':
			$title_main = "Chăm sóc khách hàng";
			$config_images = "true";
			$config_mota= "false";
			$config_noibat = "true";
			$config_ten = 'true';
			$config_list = "false";
			$config_cat = "false";
			$config_item = "false";
			$config_sub = "false";
			@define ( _width_thumb , 166 );
			@define ( _height_thumb , 133 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 3;
			break;
		case 'kienthuc':
			$title_main = "Kiến thức tiêu dùng";
			$config_images = "true";
			$config_mota= "false";
			$config_noibat = "true";
			$config_ten = 'true';
			$config_list = "false";
			$config_cat = "false";
			$config_item = "false";
			$config_sub = "false";
			@define ( _width_thumb , 390 );
			@define ( _height_thumb , 195 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 3;
			break;
		case 'thuonghieu':
			$title_main = "Thương hiệu";
			$config_images = "true";
			$config_mota= "false";
			$config_noibat = "false";
			$config_ten = 'true';
			$config_list = "false";
			$config_cat = "false";
			$config_item = "false";
			$config_sub = "false";
			@define ( _width_thumb , 200 );
			@define ( _height_thumb , 70 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 3;
			break;
		case 'album':
			$title_main = "Thư viện ảnh";
			$config_images = "true";
			$config_list = "false";
			$config_mota= "false";
			$config_noibat= "true";
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			@define ( _width_thumb , 297 );
			@define ( _height_thumb , 327 );
			@define ( _style_thumb , 1 );
			$ratio_ = 2;
			break;
		//-------------info------------------
		case 'tags':
			$title_main = 'tags';
			$config_ten = 'true';
			break;

		case 'hinhanh':
			$title_main = 'Hình ảnh';
			$config_ten = 'true';
			break;
		case 'lienhe':
			$title_main = 'Liên hệ';
			$config_ten = 'true';
			break;
		case 'video':
			$title_main = 'Video';
			@define ( _width_thumb , 790 );
			@define ( _height_thumb , 320 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF|swf' );
			$ratio_ = 1;
			break;

		case 'banner':
			$title_main = 'Banner';
			@define ( _width_thumb , 600 );
			@define ( _height_thumb , 112 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF|swf' );
			$ratio_ = 1;
			break;

		case 'logo':
			$title_main = 'Logo';
			@define ( _width_thumb , 345 );
			@define ( _height_thumb , 80 );
			@define ( _style_thumb , 2 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;
		case 'popup':
			$title_main = 'Popup';
			$links_ = 'true';
			$config_hienthi = 'true';
			@define ( _width_thumb , 900 );
			@define ( _height_thumb , 500 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;

		case 'bando':
			$title_main = 'Bản đồ';
			@define ( _width_thumb , 320 );
			@define ( _height_thumb , 180 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;

		case 'favicon':
			$title_main = 'Favicon';
			@define ( _width_thumb , 40 );
			@define ( _height_thumb , 40 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;

		case 'bgweb':
			$title_main = 'background web';
			@define ( _width_thumb , 500 );
			@define ( _height_thumb , 120 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			break;
		//-------------photo------------------
		case 'slider':
			$title_main = "Hình ảnh slider";
			@define ( _width_thumb , 900 );
			@define ( _height_thumb , 400 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			$links_ = "true";
			$config_noidung = "false";
			break;
		
		case 'lkweb':
		    $title_main = "Liên kết web";
			@define ( _width_thumb , 36 );
			@define ( _height_thumb , 35 );
			@define ( _style_thumb , 1 );
			@define ( _img_type , 'jpg|gif|png|jpeg|PNG|JPG|JPEG|GIF' );
			$ratio_ = 1;
			$links_ = "true";
			break;
		//--------------defaut---------------
		default: 
			$source = "";
			$template = "index";
			break;
	}

?>