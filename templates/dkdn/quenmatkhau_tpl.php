<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">

<div class="content">
<div class="title_main">
  <h2><?=$title_cat?></h2>
</div>
<div class="dkdn_box">
  <form method="post" name="frmquenmatkhau" action="quen-mat-khau.html" id="frmquenmatkhau" enctype="multipart/form-data">
    <table class="table" cellpadding="0" cellspacing="0">
     <tr>
         <td class="col1">
              <label><?=_nhapemaildk?> : </label>
         </td>
        <td class="col2">
            <div class="box_input hover_box">
              <i class="fa fa-envelope-o"></i>
              <input type="email" name="email" class="input hover_box" id="email_kt" value="<?=$_POST['email']?>" required placeholder="<?=_nhapemaildk?>" />
            </div>
            <label id="email_kt-error" class="error" for="email_kt"></label>

         </td>
         <td class="col3">
            <?=_dinhdang?> mail: mailto@gmail.com
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
        <td class="col1"></td>
       <td class="col2">
        <label>
          <?=_neuchuacotk?> <a href="dang-ky.html"><?=_dangky?>!</a> </br>
         <input type="checkbox" class="checkbox" checked="checked" name="ghinho"/> <?=_ghinholansau?>
        </label>
        </td>
       <td class="col3"></td>
     </tr>
     <tr>
          <td class="col1">
          </td>
          <td class="col2">
              <input  type="submit" class="button" value="<?=_dangnhap?>"/>
              <input  type="reset" class="button" value="<?=_nhaplai?>"  />    
         </td>
         <td class="col3">
             
         </td>
      </tr>
    </table>
</form>
</div><!-- dkdn_box -->
</div>


<script language="javascript" src="plugin/dkdn_custom/jquery.validate.min.js"></script>
<script language="javascript" src="plugin/dkdn_custom/dkdn.js"></script>
<script type="text/javascript">
$(function() {
  $("#frmquenmatkhau").validate({
        messages:{
        email:{required:"<?=_nhap?> email!",email:"<?=_sai._dinhdang?> email!"},
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
            if($rs==1){
              $("#email_kt-error").text('<?=_khongtimthayemail?>');
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