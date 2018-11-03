<?php 
	include_once "comment/functions.php";
	
	$d->reset();
	$sql_detail = "select * from #_comment where hienthi=1 and sanpham='".$row_detail['id']."' and id_cat=0 order by id desc";
	$d->query($sql_detail);
	$comment = $d->result_array();
?>
<link href="comment/comment.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function(e) {

		
	    load_trang();
        function load_trang(){

        $('.xemthem_cm').click(function(){
            $('.phiangoai').slideDown();
            $(this).slideUp();
        });
        $('.rel_comment .xemthem_rl').click(function(){
            $(this).parent().find('.nd_comment').slideDown();
            $(this).slideUp();
        });

		$('.like_comment').click(function(e) {
			var id = $(this).attr('alt');
            $.ajax ({
					type: "POST",
					url: "comment/like_comment.php",
					data: 'id='+id,
					success: function(result) { 
						$('#load_like_'+id).html(result);
					}
				});
			$(this).addClass('like_comment_r');
			$(this).removeClass('like_comment');
			$(this).find('span.like').html('Bỏ thích');
			return false;
        });
		
		

		$('.traloi').click(function(e) {
			//$(this).parent().parent().find('.rel_comment').css({display:'block'});;
			$(this).parent().parent().find('.com_men_xx').slideToggle(300);
			$('.com_men').css({display:'none'});
            return false
        });
		$('.traloi1').click(function(e) {
			$('.com_men_xx').css({display:'none'});
			//$('.com_men').css({display:'none'});
			$(this).parent().parent().find('.com_men').slideToggle(300);
			return false
        });

        $("a.ok").click(function(e) {

            var noidung = $(this).parent().find('#noidung').val();
            if(noidung==''){
                alert('Bạn cần nhập nội dung ở form bên dưới . ');
                $('.com_men #noidung').focus();
                return false;
            } else {
				$(this).css({display:'none'});
				$('.showdropdown').slideDown(500);
				$(".closeIfo").click(function(e) {
					$('.showdropdown').css({display:'none'});
					$('.ok').css({display:'block'});
				});
				var noidung = $(this).parent().find('#noidung').val();
                var id_cat = $(this).parent().find('#id_cat').val();
                $('#noidung_cm').html(noidung);
                $('#id_cat_cm').attr('value',id_cat);
            }
        });

		
        }

        $('#gui_bl').click(function(e) {
			var hoten=$('#hoten').val();
			var email=$('#email').val();
			if(hoten=='')
			{
				alert('Nhập họ tên !');
				$('#hoten').focus();
			} else if(email=='')
			{
				alert('Nhập email !');
				$('#email').focus();
			}
			else 
			 { 
			 
            var form_load = $('.com_men_sp').serialize();
             $.ajax ({
                type: "POST",
                url: "comment/comment.php",
                data: form_load,
                success: function(result) { 
                   
                    if(result == 1){
                        $('.com_men textarea').each(function(index, element) {
                            $(this).val('');
                        });
                       
                        var com = "<?=$_GET['com']?>";
                        var id = "<?=$row_detail['id']?>";
						
                        $.ajax ({
                            type: "GET",
                            url: "comment/load_comment.php",
                            data: {com:com,id:id},
                            success: function(result) { 
                                $('.khung_cm').html(result);
                                load_trang();
								$('.showdropdown').slideUp(500);
                            }
                        });
                    } else {
                        alert("Dữ liệu bị lỗi! Vui lòng làm lại");
                    }
                    
                }
            });
        
			 }//end else
        });

});	

</script>


    
    
    
    
    
    <div class="comment"> 
<form action="" method="post" class="row-comment" name="comment_ex">
    <textarea name="noidung" id="noidung" placeholder="Nhập nội dung" required="required"></textarea>
    <input type="hidden" name="id_cat" id="id_cat" value="">
    <a href="javascrip:void(0);" class="ok">Bình luận</a>
</form>
<div class="showdropdown wrap_loginpost">
<form action="" method="post" class="com_men_sp" name="com_men_sp">            
   <div class="closeIfo">                
   	<b class="iconcom-closeloi"></b> Đóng </div> <aside class="asideleft">                <label>Đăng nhập bằng tài khoản <?=$config_url?> để bình luận của bạn được duyệt &amp; trả lời nhanh hơn</label>                <a href="javascript:void(0)"><i class="iconcom-facebook"></i></a>                <a href="javascript:void(0)"><i class="iconcom-googleplus"></i></a>                <!--<a href="javascript:void(0)" class="dropsub">                    <i class="iconcom-mobileworld"></i>                </a>-->                <div class="showsub infologin hide">                                        <input class="userlogin" name="loginemail" type="text" placeholder="Email hoặc số di động" autocomplete="off">                    <input class="userlogin" name="loginpass" type="password" placeholder="Mật khẩu" autocomplete="off">                    <a class="forgetpass" href="https://www.thegioididong.com/dang-nhap" target="_blank">Quên mật khẩu</a>                                        <button class="loginpost" id="btnSendCmtLogin">Đăng nhập &amp; Gửi</button>                    <div class="clr"></div>                </div>                <div class="noaccount">Bạn chưa có tài khoản <?=$config_url?> ? <a target="_blank" href="">Đăng ký ngay</a></div>                <!-- report -->                <div class="reportinfo hide">                    <i></i><b class="iconcom-closereport"></b>                    Vui lòng kiểm tra lại thông tin<br>                    - Không tìm thấy Email và số di động như trên                                </div>            </aside>            <aside class="asideright">                <label>Hoặc nhập thông tin của bạn</label>                
    <input class="infoname" id="hoten" name="hoten" type="text" placeholder="Họ tên (bắt buộc)" maxlength="50" autocomplete="off">                
    <input class="infoname" id="email" name="email" type="text" placeholder="Email" autocomplete="off">                <input class="infoname hide" name="sendwithIfoSocial" type="text">                <a class="finalpost" href="javascript:void(0)" id="gui_bl">Hoàn tất &amp; gửi</a>            </aside>
    
    <input type="hidden" name="sanpham" value="<?=$row_detail['id']?>" />
    <input type="hidden" name="id_cat_cm" id="id_cat_cm" />
    <input type="hidden" name="com" value="<?=$_GET['com']?>"/>
    <input type="hidden" name="links" value="<?=getCurrentPageURL()?>"/>
    <textarea id="noidung_cm" name="noidung_cm" style="visibility:hidden;"></textarea>        
</form>    
</div>

<p style="width:100%; float:left; color:#fbd648;">Có <?=count($comment)?> bình luận</p>
<div class="khung_cm">
<?php for($i=0;$i<count($comment);$i++){?>

<?php
	$d->reset();
	$sql = "select * from #_comment_like where id_comment='".$comment[$i]['id']."' order by stt,id desc ";
	$d->query($sql);
	$comment_like = $d->result_array();
	
	$d->reset();
	$sql = "select * from #_comment_like where id_comment='".$comment[$i]['id']."' and ip_nguoilike='".getRealIPAddress()."' order by stt,id desc ";
	$d->query($sql);
	$kiem_like = $d->result_array();

?>


<div class="nd_comment phiangoai" <?php if($i>4){?> style=" display:none;" <?php } ?> >
	<div class="col-md-1 col-sm-1 col-xx-1 col-xs-1">
    
    	<div class="com-user">
        	<?php 
				$str=$comment[$i]['hoten'];
				echo $str[0];
			?>
        </div>
    </div>
    <div class="col-md-11 col-sm-11 col-xx-11 col-xs-11" style="padding:0px;">
	<p class="tencm"><?=$comment[$i]['hoten']?></p>
	<p class="ndcm"><?=$comment[$i]['noidung']?></p>
    <p class="thich">
    <a href="javascript:void(0)" class="traloi">Trả lời</a>
    <a href="javascript:void(0)" class="like_comment">
    <?php if(count($kiem_like)!=0){?>
    	<img src="comment/thich_icon.png" alt="<?=$comment[$i]['id']?>"  /> 
    <?php } else { ?>
    	<img src="comment/thich_icon.png" alt="<?=$comment[$i]['id']?>" class="like_comment" /> 
    <?php } ?>
    <span class="like">Thích</span>
    </a>
    <?php if(count($comment_like)>0){?> 
    <span id="load_like_<?=$comment[$i]['id']?>">(<?=count($comment_like)?>) </span>
    <?php }?>
    <span><?=ngay_thang($comment[$i]['ngaytao']);?></span></p>
    <?=showComment($comment[$i]['id']);?>
    </div>
</div>

<?php } ?>
<?php if(count($comment)>5){?><div class="xemthem_cm">Xem thêm........</div> <?php } ?>
</div>
</div>
    



   





