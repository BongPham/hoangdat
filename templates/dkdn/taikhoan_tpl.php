<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">

<div class="content">
<div class="title_main">
<h2><?=$title_cat?></h2>
</div><!--end title_main-->
<div class="dkdn_box">
    <form method="post" name="frmthongtin" action="tai-khoan.html" id="frmthongtin" enctype="multipart/form-data">
    	<table class="table" cellpadding="0" cellspacing="0">
        
          <tr>
            <td class="col1">
              <label>Email : </label>
             </td>
            <td class="col2">
                <p style="font-size: 17px;font-weight: bold;color: #007dc3;"><?=$info_tv['email']?></p>
                
             </td>
             <td class="col3">
             </td>
          </tr>
          
          <tr>
            <td class="col1">
              <label><?=_hoten?> : </label>
         </td>
          <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-info-circle"></i>
             <input type="text" name="hoten" class="input hover_box" value="<?=($_POST['hoten']=='')?$info_tv['hoten']:$_POST['hoten']?>" required placeholder="<?=_hoten?>" />
            </div>
            <label id="hoten-error" class="error" for="hoten"></label>
         </td>
         <td class="col3">
         </td>
         </tr>
         <tr>
        
         <tr>
            <td class="col1">
              <label><?=_diachi?> : </label>
             </td>
              <td class="col2">
                <div class="box_input hover_box">
                  <i class="fa fa-car"></i>
                  <input type="text" name="diachi" class="input hover_box" value="<?=($_POST['diachi']=='')?$info_tv['diachi']:$_POST['diachi']?>"  placeholder="<?=_diachi?>" />
                </div>
             </td>
             <td class="col3">
             </td>
         </tr>
         <tr>
            <td class="col1">
               <label><?=_ngaysinh?> : </label>
             </td>
             <td class="col2">
              <div class="box_input hover_box">
                <i class="fa fa-birthday-cake"></i>
                 <input type="date" name="ngaysinh" id="ngaysinh" class="input hover_box" value="<?=($_POST['ngaysinh']=='')?$info_tv['ngaysinh']:$_POST['ngaysinh']?>"  placeholder="<?=_ngaysinh?>" />
              </div>
             </td>
             <td class="col3">
                 
             </td>
         </tr>
         <tr>
             <td class="col1">
               <label><?=_dienthoai?> : </label>
             </td>
             <td class="col2">
              <div class="box_input hover_box">
                <i class="fa fa-phone"></i>
                <input type="text" name="dienthoai" class="input hover_box dienthoai" value="<?=($_POST['dienthoai']=='')?$info_tv['dienthoai']:$_POST['dienthoai']?>"  placeholder="<?=_dienthoai?>"  />
              </div>
             </td>
              <td class="col3">
             </td>
         </tr>
         
         <tr>
             <td class="col1">
                   <label><?=_doinet?> : </label>
               </td>
              <td class="col2">
                  <div class="box_input hover_box">
                    <i class="fa fa-sticky-note-o"></i>
                    <textarea name="noidung"  class="textarea hover_box input" placeholder="<?=_doinet?>" id="noidung" ><?=($_POST['noidung']=='')?$info_tv['noidung']:$_POST['noidung']?></textarea>
                  </div>
               </td>
               <td>
                   
               </td>
         </tr>
          <tr>
              <td class="col1">
                   <label><?=_matkhau?> : </label>
                </td>
                <td class="col2">
                  <div class="box_input hover_box">
                   <i class="fa fa-key"></i>
                    <input name="password" type="password" id="password" class="input hover_box" required minlength="6" placeholder="<?=_matkhau?>" autocomplete="off" />
                  </div>
                  <label id="password-error" class="error" for="password"></label>
               </td>
               <td class="col3"> <?=_hon6kytu?></td>
         </tr>
          <tr>
             <td class="col1">
                   <label><?=_nhapmanhuhinh?> : </label>
             </td>
              <td class="col2">
                <img src="plugin/dkdn_custom/captcha.php" title="Click Đổi Captcha" class="captcha hover_box" id="img_capcha"/>
                <div class="box_input hover_box">
                  <i class="fa fa-pied-piper-alt"></i>
                  <input type="text" name="captcha" id="captcha" required placeholder="<?=_nhapmanhuhinh?>" class="input hover_box"/>
                </div>
                  <label id="captcha-error" class="error" for="captcha"></label> 
                  <label id="msg_capcha"></label>
                </td>
             </td>
             <td class="col3">
                  <?=_batbuocnhap?>
             </td>
         </tr>
          <tr>
            <td class="col1">
            </td>
            <td class="col2">
                <input  type="submit" class="button" value="<?=_luuthaydoi?>"/>
           </td>
           <td class="col3">
               
           </td>
         </tr>
        </table>
    </form>
</div><!-- End dkdn_box -->	
</div>



<script language="javascript" src="plugin/dkdn_custom/jquery.validate.min.js"></script>
<script language="javascript" src="plugin/dkdn_custom/dkdn.js"></script>
<script type="text/javascript">
$(function() {
    $("#frmthongtin").validate({
        rules: {
          dienthoai: {
          number: true
          }
        },
        messages:{
        dienthoai:{number:"Phải nhập số!"},
        password:{required:"<?=_nhap._matkhau?>",minlength:"<?=_hon6kytu?>"},
        re_password:{required:"<?=_nhaplaimatkhau?>",minlength:"<?=_hon6kytu?>!",equalTo:"<?=_nhaplaimatkhau._sai?>"},
        hoten:{required:"<?=_nhap?> Họ tên!"},
        captcha:{required:"<?=_nhap?> <?=_captcha?>!"}
        }
    });
    //điện thoại
    $(".dienthoai").keyup(function(event) {
      this.value  = this.value.replace(".","");
      this.value  = this.value.replace(" ","");
      this.value  = this.value.replace(",","");
    });
    
    //kiem tra captcha
    $("#captcha").focusout(function(){
      $("#captcha-error").text("");
      $val = $("#captcha").val();
      if($val!=''){
        $.ajax({
          url: 'plugin/dkdn_custom/kt_captcha.php',
          type: 'post',
          data: {captcha: $val},
          success:function($rs){
            if($rs==false){
              $("#captcha-error").text('<?=_captchafalse?>');
              $("#captcha-error").show();
              $("#captcha").focus();
            }
          }
        });
      }
    });
    

    
});
</script>
