
<?php 
	/*
 function get_main_list()
  {
  	global $item;
    $sql="select * from table_list where type='diachi' order by stt asc";
    $stmt=mysql_query($sql);
    $str='
      <select id="tinh" name="tinh" data-level="0" data-type="diachi" data-table="table_cat" data-child="huyen" class="main_select select_danhmuc">
      <option value="">Chọn Tỉnh Thành</option>';
    while ($row=@mysql_fetch_array($stmt)) 
    {
      if($row["id"]==(int)@$item["tinh"])
        $selected="selected";
      else 
        $selected="";
      $str.='<option value='.$row["id"].' '.$selected.'>'.$row["ten_vi"].'</option>';      
    }
    $str.='</select>';
    return $str;
  }

  function get_main_cat()
  {
  	global $item;
    $sql="select * from table_cat where id_list='".$item['tinh']."' and type='diachi' order by stt asc";
    $stmt=mysql_query($sql);
    $str='
      <select id="huyen" name="huyen" data-level="1" data-type="diachi" data-table="table_item" data-child="xa" class="main_select select_danhmuc">
      <option value="">Chọn Quận Huyện</option>';
    while ($row=@mysql_fetch_array($stmt)) 
    {
      if($row["id"]==(int)@$item["huyen"])
        $selected="selected";
      else 
        $selected="";
      $str.='<option value='.$row["id"].' '.$selected.'>'.$row["ten_vi"].'</option>';      
    }
    $str.='</select>';
    return $str;
  }

  function get_main_item()
  {
  	global $item;
    $sql="select * from table_baiviet_item where id_cat='".$item['huyen']."' and type='diachi' order by stt asc";
    $stmt=mysql_query($sql);
    $str='
      <select id="xa" name="xa" data-level="2" data-type="diachi" data-table="sub" class="main_select">
      <option value="">Chọn Phường Xã</option>';
    while ($row=@mysql_fetch_array($stmt)) 
    {
      if($row["id"]==(int)@$item["xa"])
        $selected="selected";
      else 
        $selected="";
      $str.='<option value='.$row["id"].' '.$selected.'>'.$row["ten_vi"].'</option>';      
    }
    $str.='</select>';
    return $str;
  }*/
?>
<?php if($_GET["act"]=="add"){?>
<h3>Thêm Thành Viên</h3>
<?php }else{?>
<h3>Thông Tin Thành Viên</h3>
<?php }?>
<form name="frm" method="post" id="validate" class="form" action="index.php?com=thanhvien&act=save" enctype="multipart/form-data" class="nhaplieu">
	<div class="control_frm" style="margin-top:25px;">
	    <div class="bc">
	        <ul id="breadcrumbs" class="breadcrumbs">
	        	<li class="current"><a href="#" onclick="return false;">Các Thông Tin Bắt Buộc</a></li>
	        </ul>
	        <div class="clear"></div>
	    </div>
	</div>
		
	<div class="widget">
		
		<div class="formRow">
			<label>Email</label>
			<div class="formRight">
                <input type="email" name="email" title="Nhập email" id="email" class="tipS validate[required]" value="<?=@$item['email']?>" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->
		<div class="formRow">
			<label>Password</label>
			<div class="formRight">
                <input type="password" name="password" title="Nhập password" id="password" class="tipS <?php if($_GET["act"]=="add") echo 'validate[required]';?> " value="" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->
		<?php if($_GET["act"]=="add"){?>
		<div class="formRow">
			<label>Nhập Lại Password</label>
			<div class="formRight">
                <input type="password" name="repassword" title="Nhập lại password" id="repassword" class="tipS validate[required]" value="" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->
		<?php }?>
		<div class="formRow">
			<label>Họ Tên</label>
			<div class="formRight">
                <input type="text" name="hoten" title="Nhập họ tên" id="username" class="tipS validate[required]" value="<?=@$item['hoten']?>" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->
		
	</div>

		<div class="control_frm" style="margin-top:25px;">
		    <div class="bc">
		        <ul id="breadcrumbs" class="breadcrumbs">
		        	<li class="current"><a href="#" onclick="return false;">Các Thông Tin Khác</a></li>
		        </ul>
		        <div class="clear"></div>
		    </div>
		</div>
	<div class="widget">
		<div class="formRow">
			<label>Địa chỉ</label>
			<div class="formRight">
                <input type="text" name="diachi" title="Nhập địa chỉ" id="diachi" class="tipS" value="<?=@$item['diachi']?>" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->

		<div class="formRow">
			<label>Ngày Sinh</label>
			<div class="formRight">
                <input type="date" name="ngaysinh" title="Nhập Ngày Sinh" id="ngaysinh" class="tipS" value="<?=@$item['ngaysinh']?>" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->

		<div class="formRow">
			<label>Điện thoại</label>
			<div class="formRight">
                <input type="text" name="dienthoai" title="Nhập Điện thoại" id="dienthoai" class="tipS" value="<?=@$item['dienthoai']?>" />
			</div>
			<div class="clear"></div>
		</div><!-- formRow -->

		<div class="formRow">
			<label>Giới Thiệu</label>
			<div class="formRight">
                <textarea rows="4" cols="" title="Nhập mô tả . " class="tipS" id="noidung" name="noidung"><?=@$item['noidung']?></textarea>
			</div>
			<div class="clear"></div>
		</div>
		
		<div class="formRow">
			<b>Kích hoạt</b> <input type="checkbox" name="trangthai" <?=(!isset($item['trangthai']) || $item['trangthai']==1)?'checked="checked"':''?>><br />
	
			<div class="formRight">

                <input type="hidden" name="id" id="id_this_post" value="<?=@$item['id']?>" />
            	<input type="submit" class="blueB" onclick="TreeFilterChanged2(); return false;" value="Hoàn tất" />
            	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=thanhvien&act=man'" class="btn" />
          	</div>
			<div class="clear"></div>
		</div>
		</div>
	</div>
</form>