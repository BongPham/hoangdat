<script>
$(document).ready(function() {
	$('.update_stt').keyup(function(event) {
			var id = $(this).attr('rel');
			var table = 'baiviet';
			var value = $(this).val();
			$.ajax ({
				type: "POST",
				url: "ajax/update_stt.php",
				data: {id:id,table:table,value:value},
				success: function(result) {
				}
			});
		});

$("#chonhet").click(function(){
	var status=this.checked;
	$("input[name='chon']").each(function(){this.checked=status;});
});

$('.timkiem button').click(function(event) {
	var keyword = $(this).parent().find('input').val();
	window.location.href="index.php?com=thanhvien&act=man&keyword="+keyword;
});
 $("#xoahet").click(function(){
      var listid="";
      $("input[name='chon']").each(function(){
        if (this.checked) listid = listid+","+this.value;
        })
      listid=listid.substr(1);   //alert(listid);
      if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
      hoi= confirm("Bạn có chắc chắn muốn xóa?");
      if (hoi==true) document.location = "index.php?com=thanhvien&act=delete&listid=" + listid;
    });

$("#send").click(function(){
	var listid="";
	$("input[name='chon']").each(function(){
		if (this.checked) listid = listid+","+this.value;
    	})
	listid=listid.substr(1);	 //alert(listid);
	if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
	hoi= confirm("Xác nhận muốn gửi thư đi?");
	if (hoi==true){ document.frm.listid.value=listid; document.frm.submit();}
});
});
</script>
<div class="control_frm" style="margin-top:25px;">
    <div class="bc">
        <ul id="breadcrumbs" class="breadcrumbs">
        	<li><a href="index.php?com=thanhvien&act=man<?php if($_REQUEST['type']!='') echo'&type='. $_REQUEST['type'];?>"><span>Quản lý <?=$title_main?></span></a></li>
        	<?php if($_GET['keyword']!=''){ ?>
				<li class="current"><a href="#" onclick="return false;">Kết quả tìm kiếm " <?=$_GET['keyword']?> " </a></li>
			<?php }  else { ?>
            	<li class="current"><a href="#" onclick="return false;">Quản lý email</a></li>
            <?php } ?>

        </ul>
        <div class="clear"></div>
    </div>
</div>

<p>Chọn email mà bạn muốn gửi</p>
<form name="frm" method="post"  action="index.php?com=thanhvien&act=send" enctype="multipart/form-data" id="f">	
<div class="control_frm" style="margin-top:0;">
  	<div style="float:left;">
    	<input type="button" class="blueB" value="Thêm" onclick="location.href='index.php?com=thanhvien&act=add'" />
        <input type="button" class="blueB" value="Xoá Chọn" id="xoahet" />

    </div>  
</div>
<div class="widget">

 <div class="title"><span class="titleIcon">
    <input type="checkbox" id="titleCheck" name="titleCheck" />
    </span>
    <h6>Chọn tất cả</h6>
    <div class="timkiem">
	    <input type="text" value="" placeholder="Nhập từ khóa tìm kiếm ">
	    <button type="button" class="blueB"  value="">Tìm kiếm</button>
    </div>
  </div>

<input type="hidden" name="listid">

<table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="checkAll">

	<tr style="text-align:center">
        <td></td>
        <td>STT</td>
        <td class="sortCol"><div>Email<span></span></div></td>
        <td class="sortCol"><div>Họ Tên<span></span></div></td>
        <td class="sortCol">Kích Hoạt</td>
        <td width="50">Thao tác</td>
      </tr>
    
	<?php for($i=0, $count=count($items); $i<$count; $i++){?>
	<tr style="text-align:center">
		<td align="center"><input type="checkbox" name="chon" value="<?=$items[$i]['id']?>" class="chon" /></td>	
		<td  align="center">
			<?=$i+1?>

		</td>
			        
        <td align="center">
        <a href="index.php?com=thanhvien&act=edit&id=<?=$items[$i]['id']?>">
        <?=$items[$i]['email']?></a>
        </td>
        <td  align="center">
        	<a href="index.php?com=thanhvien&act=edit&id=<?=$items[$i]['id']?>"><?=$items[$i]['hoten']?></a></td>
		
		<td align="center">
          <a data-val2="table_thanhvien" rel="<?=$items[$i]['trangthai']?>" data-val3="trangthai" class="diamondToggle <?=($items[$i]['trangthai']==1)?"diamondToggleOff":""?>" data-val0="<?=$items[$i]['id']?>" ></a>   
        </td>
		<td class="actBtns">
		<a href="index.php?com=thanhvien&act=edit&id=<?=$items[$i]['id']?>">
		<img src="./images/icons/dark/pencil.png" alt="">
		</a>
		<a href="index.php?com=thanhvien&act=delete&id=<?=$items[$i]['id']?>" onClick="if(!confirm('Xác nhận xóa')) return false;"><img src="./images/icons/dark/close.png" alt=""></a>
		</td>

	</tr>
	<?php	}?>
</table>
<?=$paging?>
</div>

	<div class="widget">

		<div class="formRow">
			<label>File đính kèm:</label>
			<div class="formRight">
            	<input type="file" id="file" name="file" />
				<img src="./images/question-button.png" alt="Upload hình" class="icon_question tipS" original-title="Tải File (rar|zip|doc|docx|xls|xlsx|ppt|pptx|pdf|png|jpg|jpeg|gif)">
			</div>
			<div class="clear"></div>
		</div>
		
        <div class="formRow form">
			<label>Tiêu đề</label>
			<div class="formRight">
                <input type="text" name="ten_vi" title="Nhập tiêu đề " id="ten_vi" class="tipS validate[required]" value="<?=@$item['ten_vi']?>" />
			</div>
			<div class="clear"></div>
		</div>


		<div class="formRow">
			<label>Nội Dung</label>
			<div class="ck_editor">
                <textarea id="noidung_vi" name="noidung_vi"><?=@$item['noidung_vi']?></textarea>
			</div>
			<div class="clear"></div>
		</div>

		<div class="formRow">
			<label></label>
			<div class="clear"></div>
			<input type="button" class="blueB" id="send" value="Gửi mail" />
		</div>
		
	
	</div>  
	
</form> 




