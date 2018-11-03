<?php 
	//bỏ ký tự khoảng trắng,bỏ tag html,các ký tự không cho phép sql
	function str_security($s){return mysql_real_escape_string(trim(strip_tags($s)));}
	//Kiểm Tra không được Trống
	function str_notnull($s,$t){if($s==''){alert($t." "._notnull);return false;}else return true;}
	//Kiểm tra tồn tại email
	function check_email($e){
		global $d;
		if($e!=''){
	        $e=str_security($e);
	        if($e=='') {return false;}
	        $d->reset();
	        $d->query("select id from #_thanhvien where email='".$e."'");
	        $arr = $d->result_array();
	        if (count($arr)==0) {return true;}else{return false;}
	    }else return false;
	}
	//Lấy thông tin thành viên
	function get_info_tv($email){
		if(check_email($email)) return null;
		global $d;
		$d->query("select * from #_thanhvien where email='".$email."'");
		return $d->fetch_array();
	}
?>