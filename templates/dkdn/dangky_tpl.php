<link rel="stylesheet" type="text/css" href="js/plugin/dkdn_custom/style.css">

<div class="content">
 <div class="title_main">
    <h2><?=$title_cat?></h2>
  </div><!--end title_main-->
<div class="dkdn_box">
<h2 class="title"><?=_tieudedangky?></h2>
<form method="post" name="frmdangky" action="dang-ky.html" id="frmdangky" enctype="multipart/form-data">
	<table class="table" cellpadding="0" cellspacing="0">  
    <tr>
         <td class="col1">
              <label>Email : </label>
         </td>
        <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-envelope-o"></i>
              <input type="email" name="email" class="input hover_box" id="email_kt" value="<?=$_POST['email']?>" required placeholder="Email"  />
            </div>
            <label id="email_kt-error" class="error" for="email_kt"></label>

         </td>
         <td class="col3">
            <?=_dinhdang?> mail: mailto@gmail.com
         </td>
     </tr> 
     <tr>
          <td class="col1">
             <label><?=_matkhau?> : </label>
          </td>
          <td class="col2">
            <div class="box_input hover_box">
             <i class="fa fa-key"></i>
              <input name="password" type="password" id="password" class="input hover_box" required minlength="6" placeholder="<?=_matkhau?>"/>
            </div>
            <label id="password-error" class="error" for="password"></label>
         </td>
         <td class="col3"> <?=_hon6kytu?></td>
     </tr>
     <tr>
         <td class="col1">
              <label><?=_nhaplaimatkhau?> : </label>
         </td>
         <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-random"></i>
              <input type="password" name="re_password" class="input hover_box" required minlength="6" placeholder="<?=_nhaplaimatkhau?>"  />
            </div>
            <label id="re_password-error" class="error" for="re_password"></label>
         </td>
         <td class="col3">
              <?=_hon6kytu?>
         </td>
     </tr>
     
      <tr>
        <td class="col1">
              <label><?=_hoten?> : </label>
         </td>
          <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-info-circle"></i>
             <input type="text" name="hoten" class="input hover_box" value="<?=$_POST['hoten']?>" required placeholder="<?=_hoten?>" />
            </div>
            <label id="hoten-error" class="error" for="hoten"></label>
         </td>
         <td class="col3">
             <?=_batbuocnhap?>
         </td>
     </tr>

     <tr>
        <td class="col1">
              <label><?=_diachi?> : </label>
         </td>
          <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-car"></i>
              <input type="text" name="diachi" class="input hover_box" value="<?=$_POST['diachi']?>"  placeholder="<?=_diachi?>" />
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
             <input type="date" name="ngaysinh" id="ngaysinh" class="input hover_box" value="<?=$_POST['ngaysinh']?>"  placeholder="<?=_ngaysinh?>" />
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
            <input type="text" name="dienthoai" class="input hover_box dienthoai" value="<?=$_POST['dienthoai']?>"  placeholder="<?=_dienthoai?>"  />
          </div>
         </td>
          <td class="col3">
         </td>
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
             <label><?=_doinet?> : </label>
         </td>
        <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-sticky-note-o"></i>
              <textarea name="noidung" cols="48" rows="5" value="<?=$_POST['noidung']?>" class="textarea hover_box input" placeholder="<?=_doinet?>" id="noidung" ></textarea>
            </div>
         </td>
         <td>
         </td>
     </tr>
     <tr>
         <td class="col1">
             <label>Đồng Ý Điều Khoản : </label>
         </td>
        <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-check-square"></i>
              <input type="checkbox" name="dongy" id="dongy" value="1" class="checkbox" style="margin-top:10px;" required   />
              <label id="dongy-error" class="dongy" for="dongy"></label> 
              <p>Hãy chắc là bạn đã biết các <a href="dieu-khoan-dang-ky.html" class="fancybox fancybox.ajax"> điều khoản </a> về đăng ký tài khoản của chúng tôi!</p>
            </div>
         </td>
         <td>
         </td>
     </tr>
      <tr>
          <td class="col1">
          </td>
          <td class="col2">
              <input  type="submit" class="button" value="<?=_dangky?>"/>
              <input  type="reset" class="button" value="<?=_nhaplai?>"  />    
         </td>
         <td class="col3">
             
         </td>
     </tr>
    </table>
</form>
</div><!--dkdn_box-->   
</div>

<script language="javascript" src="plugin/dkdn_custom/jquery.validate.min.js"></script>
<script language="javascript" src="plugin/dkdn_custom/dkdn.js"></script>
<script type="text/javascript">
$(function() {
    $("#frmdangky").validate({
        rules:{
          re_password:{equalTo:"#password"},
          dienthoai: {
            number: true
          }
        },
        messages:{
        password:{required:"<?=_nhap._matkhau?>",minlength:"<?=_hon6kytu?>"},
        re_password:{required:"<?=_nhaplaimatkhau?>",minlength:"<?=_hon6kytu?>!",equalTo:"<?=_nhaplaimatkhau._sai?>"},
        email:{required:"<?=_nhap?> email!",email:"<?=_sai._dinhdang?> email!"},
        hoten:{required:"<?=_nhap?> Họ tên!"},
        dongy:{required:"Chưa chọn đồng ý!"},
        captcha:{required:"<?=_nhap?> <?=_captcha?>!"},
        dienthoai:{number:"Phải nhập số!"}
        }
    });
    //điện thoại
    $(".dienthoai").keyup(function(event) {
      this.value  = this.value.replace(".","");
      this.value  = this.value.replace(" ","");
      this.value  = this.value.replace(",","");
    });
    //kiem tra email trung
    $("#email_kt").focusout(function(){
      $("#email_kt-error").text("");
      $val = $("#email_kt").val();
      if($val!=''){
        $.ajax({
          url: 'plugin/dkdn_custom/kt_email.php',
          type: 'post',
          data: {email: $val},
          success:function($rs){
            if($rs==0){
              $("#email_kt-error").text('<?=_emailfalse?>');
              $("#email_kt-error").show();
              $("#email_kt").focus();
            }
          }
        });
      }
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
