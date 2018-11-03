<?php 
  include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
?>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">

<div class="dkdn_box content_fancy">
 <div class="title_main" >
    <h2><?=$title_cat?></h2>
  </div><!--end title_main-->
<form method="post" name="frmdangky" action="dang-ky.html" id="frmdangky" enctype="multipart/form-data">
	<table class="table" cellpadding="0" cellspacing="0">  
    
    <tr>
        <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-envelope-o"></i>
              <input type="email" name="email" class="input hover_box" id="email_kt" value="<?=$_POST['email']?>" required placeholder="Email" class="input" />
            </div>
            <label id="email_kt-error" class="error" for="email_kt"></label>

         </td>
     </tr>   
     <tr>
          <td class="col2">
            <div class="box_input hover_box">
             <i class="fa fa-key"></i>
              <input name="password" type="password" id="password" class="input hover_box" required minlength="6" placeholder="<?=_matkhau?>" class="input"/>
            </div>
            <label id="password-error" class="error" for="password"></label>
         </td>
     </tr>
     <tr>
         <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-random"></i>
              <input type="password" name="re_password" class="input hover_box" required minlength="6" placeholder="<?=_nhaplaimatkhau?>" class="input" />
            </div>
            <label id="re_password-error" class="error" for="re_password"></label>
         </td>
     </tr>
     
      <tr>
          <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-info-circle"></i>
             <input type="text" name="hoten" class="input hover_box" value="<?=$_POST['hoten']?>" required placeholder="<?=_hoten?>" class="input"/>
            </div>
            <label id="hoten-error" class="error" for="hoten"></label>
         </td>
     </tr>
    
      <tr>
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
     </tr>
     <tr>
        <td class="col2">

            <div class="box_input hover_box">

              <i class="fa fa-check-square"></i>
              <label>Đồng Ý Điều Khoản : </label>
              <input type="checkbox" name="dongy" id="dongy" value="1" class="checkbox" style="margin-top:10px;" required   />
              <label id="dongy-error" class="dongy" for="dongy"></label> 
              <p>Xem <a href="dieu-khoan-dang-ky.html" class="fancybox fancybox.ajax"> điều khoản </a> về đăng ký tài khoản của chúng tôi!</p>
            </div>
         </td>
     </tr>
      <tr>
          <td class="col2">
              <input  type="submit" class="button" value="<?=_dangky?>"/>
              <input  type="reset" class="button" value="<?=_nhaplai?>"  />    
         </td>
     </tr>
    </table>
</form>
</div><!--dkdn_box--> 
<style type="text/css" media="screen">

#load_ban .col1,
#load_ban .col3{
  display:none !important;
}    
</style>  
<script language="javascript" src="plugin/dkdn_custom/jquery.validate.min.js"></script>
<script language="javascript" src="plugin/dkdn_custom/dkdn.js"></script>
<script type="text/javascript">
$(function() {
    $("#frmdangky").validate({
        rules:{
          re_password:{equalTo:"#password"}
        },
        messages:{
        id_list:{required:"<?=_chuachon._linhvuckd?>"},
        loaitv:{required:"<?=_chuachon._loaitv?>"},
        quocgia:{required:"<?=_chuachon._quocgia?>"},
        khuvuc:{required:"<?=_chuachon._khuvuc?>"},
        password:{required:"<?=_nhap._matkhau?>",minlength:"<?=_hon6kytu?>"},
        re_password:{required:"<?=_nhaplaimatkhau?>",minlength:"<?=_hon6kytu?>!",equalTo:"<?=_nhaplaimatkhau._sai?>"},
        email:{required:"<?=_nhap?> email!",email:"<?=_sai._dinhdang?> email!"},
        hoten:{required:"<?=_nhap?> Họ tên!"},
        dongy:{required:"Chưa chọn đồng ý!"},
        captcha:{required:"<?=_nhap?> <?=_captcha?>!"}
        }
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

<?php exit();?>