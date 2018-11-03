<script language="javascript">
	function clear_cart(){
		if(confirm('Bạn có muốn xóa tất giỏ hàng không ?')){
			document.form1.command.value='clear';
			document.form1.submit();
		}
	}
	function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}
</script>
<script language="javascript">
	function xoa(pid){
		if(confirm('Xóa sản phẩm này ! ')){
			document.form_giohang.pid.value=pid;
			document.form_giohang.command.value='delete';
			document.form_giohang.submit();
		}
	}
</script>

<form name="form_giohang" action="index.php?com=thanh-toan" method="get">
	<input type="hidden" name="com" value="thanh-toan" />
	<input type="hidden" name="pid" />
    <input type="hidden" name="command" />
</form>

<?php
if($_REQUEST['command']=='delete' && $_REQUEST['pid']>0){
		remove_pro_thanh($_REQUEST['pid']);
	}
	else if($_REQUEST['command']=='clear'){
		unset($_SESSION['cart']);
	}
		else if($_REQUEST['command']=='update'){
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=$_REQUEST['product'.$pid];
			if($q>0 && $q<=999){
				$soluong = str_replace(",", '.', $q);
				$_SESSION['cart'][$i]['qty']=$soluong;
			}
			else{
				$msg='Some proudcts not updated!, quantity must be a number between 1 and 999';
			}
		}
	}

	function get_tinhthanh_list()
  {
    global $info_tv;
    $sql="select * from table_place_city order by stt asc";
    $stmt=mysql_query($sql);
    $str='
      <select id="id_tinhthanh" name="id_tinhthanh" data-level="0" data-table="table_place_dist" data-child="id_quanhuyen" class="main_select select_tinhthanh">
      <option value="">Chọn tỉnh thành</option>';
    while ($row=@mysql_fetch_array($stmt)) 
    {
      if($row["id"]==(int)@$info_tv["id_tinhthanh"])
        $selected="selected";
      else 
        $selected="";
      $str.='<option value='.$row["id"].' '.$selected.'>'.$row["ten"].'</option>';      
    }
    $str.='</select>';
    return $str;
  }

function get_tinhthanh_cat()
  {
    global $info_tv;
    $sql="select * from table_place_dist where id_city= '".$info_tv["id_tinhthanh"]."' order by stt asc";
    $stmt=mysql_query($sql);
    $str='
      <select id="id_quanhuyen" name="id_quanhuyen" data-table="table_place_ward" data-child="id_phuongxa" data-level="1" class="main_select select_tinhthanh">
      <option value="">Chọn quận/huyện</option>';
    while ($row=@mysql_fetch_array($stmt)) 
    {
      if($row["id"]==(int)@$info_tv["id_quanhuyen"])
        $selected="selected";
      else 
        $selected="";
      $str.='<option value='.$row["id"].' '.$selected.'>'.$row["ten"].'</option>';      
    }
    $str.='</select>';
    return $str;
  }

  $d->reset();
  $sql_tv = "select * from #_thanhvien where id = '".$_SESSION['login_web']["id"]."'";
  $d->query($sql_tv);
  $result_tv = $d->fetch_array();
?>

<link href="css/giohang.css" rel="stylesheet" type="text/css" />

<div id="info">

<div id="sanpham">
                <div class="thanh_index"><span>Thanh toán</span></div>
			  <div class="clear" style="height:10px;"></div>
     <form method="post" name="frm_order" action="xac-nhan.html" enctype="multipart/form-data"  id="frm_order">
              <div class="khung">
             <div style="padding:5px; color:#000000;" >              
   
           <table border="0" cellpadding="5px" cellspacing="1px" style="font-family:Verdana, Geneva, sans-serif; font-size:11px; background-color:#E1E1E1; padding:5px;" width="100%" class="giohang_tk">
    	<?php
			if(is_array($_SESSION['cart'])){
            	echo '<tr class="menu_giohang" ><td>No.</td><td>'._hinhanh.'</td><td>'._ten.'</td><td>'._gia.'</td><td>'._soluong.'</td><td>'._tonggia.'</td><td>'._xoa.'</td></tr>';
				$max=count($_SESSION['cart']);
				for($i=0;$i<$max;$i++){
          $dungtich=$_SESSION['cart'][$i]['dungtich'];
					$pid=$_SESSION['cart'][$i]['productid'];
					$q=$_SESSION['cart'][$i]['qty'];
					$pname=get_product_name($pid);
					if($q==0) continue;
					
			?>
            		<tr bgcolor="#FFFFFF" class="ahaa"><td width="5%"><?=$i+1?></td>
                    <td width="10%"><a href="san-pham/<?=changeTitle($pname)?>.html"><img src="upload/product/<?=get_thumb($pid)?>" width="120" style="padding:5px;" /></a></td>
            		<td width="29%"> <a href="san-pham/<?=changeTitle($pname)?>.html" style="color:rgba(0,102,153,1); font-size:16px; font-weight:bold;"><?=$pname?> </a></td>
                
                  <?php if ($dungtich == '' || $dungtich == null){ ?>
                       <td width="12%">  </td>
                      <td width="12%"><?=get_price($pid)?>&nbsp;VND</td>
                      <td width="8%"><input type="text" name="product<?=$pid?>" value="<?=$q?>" maxlength="5" size="3" style="background:#CCC;text-align:center;border-radius:5px 5px 5px 5px; " />&nbsp;</td>                    
                      <td width="20%"><?=number_format(get_price($pid)*$q,0, ',', '.') ?>&nbsp;VND</td>
                    <?php }
                    else { ?>
                      <td width="12%"> <?=get_dungtich($pid,$dungtich)?></td>
                      <td width="12%"><?=number_format(get_price_dungtich($pid,$dungtich),0, ',', '.')?>&nbsp;VND</td>
                      <td width="8%"><input type="text" name="product<?=$pid?>" value="<?=$q?>" maxlength="5" size="3" style="background:#CCC;text-align:center;border-radius:5px 5px 5px 5px; " />&nbsp;</td>                    
                      <td width="20%"><?=number_format(get_price_dungtich($pid,$dungtich)*$q,0, ',', '.')?>&nbsp;VND</td>
                    <?php } ?>
                     <td width="10%"><img src="images/disabled.png" border="0" onclick="xoa(<?=$pid?>)" width="20" height="20"/></td>
            		</tr>
            <?php					
				}
			?>
				
                <tr><td colspan="7">
              <table width="100%" cellpadding="0" cellspacing="0" border="0">
              <tr class="tonggia">
              <td >  
                
                <b>Tổng giá : <?=number_format(get_order_total(),0, ',', '.')?>&nbsp;đ</b></td>
             </tr>
             
            
             </table>   
                </td></tr>
			<?php
            }
			else{
				echo "<tr bgColor='#FFFFFF'><td>You have no items in your shopping cart!!!</td>";
			}
		?>
        
        </table>
    
   <?php
   //if(get_order_total()!=0)
  // {
   ?>
    
   
   <div class="thongtin_thanhtoan">
    <table width="100%" cellpadding="0" cellspacing="0"  style="padding:5px;" class="noidung thanhtoan">
     <tr><td colspan="4" class="titleinformation"><img src="images/icon/thutuc.png" alt="" style=" margin-right:10px;" width="30"  /> Thông tin người đặt hàng </td></tr>
      <tr>
        <td class="contentinformationleft" width="30%"><img src="images/icon/accuont.png" alt="" style=" margin-right:10px;" /> <?=_hoten?> <span class="alert">*</span></td>
        <td class="contentinformationleft" width="30%"><input name="ten" id="ten" class="formsubmit" value="<?=$_SESSION['login_web']["hoten"]?>" required="required" /></td>
      </tr>
      <tr>
        <td width="30%" class="contentinformationleft" ><img src="images/icon/phone.png" alt="" style=" margin-right:10px;" /> <?=_dienthoai?><span class="alert">*</span></td>
        <td width="30%" class="contentinformationleft" ><input name="dienthoai" id="dienthoai" class="formsubmit" value="<?=$result_tv['dienthoai']?>" required="required" /></td>
      </tr>
      <tr>
        <td width="30%"  class="contentinformationleft" ><img src="images/icon/house.png" alt="" style=" margin-right:10px;"  /> <?=_diachi?> <span class="alert">*</span></td>
        <td width="30%"  class="contentinformationleft"><input  name="diachi"  id="diachi" class="formsubmit" required="required"  value="<?=$result_tv['diachi']?>"/></td>
      </tr>
      <tr>
        <td width="30%"  class="contentinformationleft" ><img src="images/icon/batquai.png" alt="" style=" margin-right:10px;"  /> E-mail<span class="alert">*</span></td>
        <td width="30%"  class="contentinformationleft" ><input type="email" name="email" id="email" class="formsubmit" required="required"  value="<?=$_SESSION['login_web']["email"]?>"/></td>
      </tr>

   

      <tr><td colspan="4" class="titleinformation"><img src="images/icon/thutuc.png" alt="" style=" margin-right:10px;" width="30"  /> <?=_thongtinnguoinhanhang?> </td></tr>
      <tr>
        <td colspan="4"  style="vertical-align:top"> <textarea name="noidung"  cols="140" rows="5" style="color:#333333;"  ><?=$_POST['noidung']?></textarea></td>
      </tr>


      
             
    </table>
    </div>
    
    <div style=" float:right; padding-bottom:20px; padding-top:20px;" align="right">
      	<input  id="" title='tiếp tục' alt='tiếp tục' align="right" type="submit" name="next" value="<?=_tieptucmuahang?>" style="cursor:pointer;" style="padding:2px;" class="g_muatiep"/>
        <input  id="submit_thanhtoan" title='tiếp tục' alt='tiếp tục' align="right" type="submit" name="next" value="<?=_thanhtoan?>" style="cursor:pointer;" style="padding:2px;" class="g_muatiep"/>
        <input name="mod" type="hidden" id="mod3">
    </div>
    <?php //}?>
    
    <input type="hidden" id="priceproduct" name="priceproduct" value="7850000" />
    <div id="totalprice" style="display:none;"><input type="hidden" id="total" name="total" value="7850000" /></div>
    <div id="delivery" style="display:none;"><input type="hidden" id="delivery" name="delivery" value="0" /></div>
</form>
                
                </div></div>
     
              </div>
              
</div>
