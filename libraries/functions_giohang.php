<?php
	function get_product_name($pid){
		global $d, $row,$lang;
		$sql = "select ten_$lang from #_product where id='".$pid."'";
		$d->query($sql);
		$row = $d->fetch_array();
		return $row['ten_'.$lang];
	}

	function get_loaiphong($pid){
		global $d, $row,$lang;
		$sql = "select ten_$lang from #_baiviet where id='".$pid."'";
		$d->query($sql);
		$row = $d->fetch_array();
		return $row['ten_'.$lang];
	}
	
	function get_price($pid){
		global $d, $row;
		$sql = "select giaban from table_product where id='".$pid."'";
		$d->query($sql);
		$row = $d->fetch_array();
		return $row['giaban'];
	}

	function get_price_dungtich($pid,$dungtich){
		global $d, $row;
		$sql = "select giaban, khuyenmai_vi, giadungtich_vi from table_product where id='".$pid."'";
		$d->query($sql);
		$row = $d->fetch_array();
		$giadungtich = explode("|",$row['giadungtich_vi']);
		return $giadungtich[$dungtich];
	}

	function get_dungtich($pid,$dungtich){
		global $d, $row;
		$sql = "select giaban, khuyenmai_vi, giadungtich_vi from table_product where id='".$pid."'";
		$d->query($sql);
		$row = $d->fetch_array();
		$dungtichchon = explode("|",$row['khuyenmai_vi']);
		return $dungtichchon[$dungtich];
	}
		
	function get_thumb($pid){
		global $d, $row;
		$sql = "select thumb from table_product where id='".$pid."' ";
		$d->query($sql);
		$row = $d->fetch_array();
		return $row['thumb'];
	}
	function remove_product($pid,$thongtin){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid'] && $thongtin==$_SESSION['cart'][$i]['thongtin']){
				unset($_SESSION['cart'][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
	}
	function remove_pro_thanh($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				unset($_SESSION['cart'][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
		redirect('thanh-toan.html');
	}
	function get_order_total(){
		$max=count($_SESSION['cart']);
		$sum=0;
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=$_SESSION['cart'][$i]['qty'];
			$dungtich = $_SESSION['cart'][$i]['dungtich'];
			if($dungtich == null || $dungtich == ''){
				$price=get_price($pid);
			}else{
				$price=get_price_dungtich($pid,$dungtich);
			}
			
			$sum+=$price*$q;
		}
		return $sum;
	}
	function addtocart($pid,$q,$dungtich,$giadungtich){
		if($pid<1 or $q<1) return;
		
		if(is_array($_SESSION['cart'])){
			if(product_exists($pid,$q)) return 0;
			$max=count($_SESSION['cart']);
			$_SESSION['cart'][$max]['productid']=$pid;
			$_SESSION['cart'][$max]['qty']=$q;
			$_SESSION['cart'][$max]['dungtich']=$dungtich;
			$_SESSION['cart'][$max]['giadungtich']=$giadungtich;
			return count($_SESSION['cart']);
		}
		else{
			$_SESSION['cart']=array();
			$_SESSION['cart'][0]['productid']=$pid;
			$_SESSION['cart'][0]['qty']=$q;
			$_SESSION['cart'][0]['dungtich']=$dungtich;
			$_SESSION['cart'][0]['giadungtich']=$giadungtich;
			return count($_SESSION['cart']);	
		}
	}
	function addtocart1($pid,$q,$dungtich,$giadungtich){
		if($pid<1 or $q<1 or $$dungtich<1 or $giadungtich<1) return;
		
		if(is_array($_SESSION['cart'])){
			if(product_exists($pid,$q)) return 0;
			$max=count($_SESSION['cart']);
			$_SESSION['cart'][$max]['productid']=$pid;
			$_SESSION['cart'][$max]['qty']=$q;
			$_SESSION['cart'][$max]['dungtich']=$dungtich;
			$_SESSION['cart'][$max]['giadungtich']=$giadungtich;
			return count($_SESSION['cart']);
		}
		else{
			$_SESSION['cart']=array();
			$_SESSION['cart'][0]['productid']=$pid;
			$_SESSION['cart'][0]['qty']=$q;
			$_SESSION['cart'][0]['dungtich']=$dungtich;
			$_SESSION['cart'][0]['giadungtich']=$giadungtich;
			return count($_SESSION['cart']);	
		}
	}
	function product_exists($pid,$q){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				$_SESSION['cart'][$i]['qty'] = $_SESSION['cart'][$i]['qty'] + $q;
				$flag=1;
				break;
			}
		}
		return $flag;
	}

?>