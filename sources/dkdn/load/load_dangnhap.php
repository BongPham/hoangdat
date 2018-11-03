<?php 
  include_once 'plugin/dkdn_custom/lang_'.$lang.'.php';
  //dang nhap bang cookie
  if(isset($_COOKIE["email".$config_url])){
    $cookie_us=$_COOKIE["email".$config_url];
    $cookie_ps = $_COOKIE["pass".$config_url];
  }
?>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">
<div class="dkdn_box content_fancy" >
<div class="title_main" >
  <h2><?=$title_cat?></h2>
</div>
      <form method="post" name="frmdangnhap" action="dang-nhap.html" id="frmdangnhap" enctype="multipart/form-data">
        <table class="table" cellpadding="0" cellspacing="0">
         <tr>
             <td class="col2">
                <div class="box_input hover_box">
                  <i class="fa fa-user"></i>
                  <input type="email" name="email" id="email_kt"  class="input " value="<?=($_POST['email']=='')?$cookie_us:$_POST['email']?>" required minlength="6"  placeholder="Email" class="input" />  
                </div>
                <label id="email_kt-error" class="error" for="email_kt"></label>
             </td>
         </tr>   
         <tr>
            <td class="col2">
              <div class="box_input hover_box">
               <i class="fa fa-key"></i>
                <input name="password" type="password"  id="password" class="input hover_box" value="<?=($_POST['password']=='')?$cookie_ps:$_POST['password']?>" required minlength="6" placeholder="<?=_matkhau?>" class="input"/>
              </div>
              <label id="password-error" class="error" for="password"></label>
            </td>
        </tr>
        <!-- <tr>
          <td>
            <img onClick="loginFb()" class="img_login transition" src="images/img_f.png" alt="login facebook" />
            <img onClick="login()" class="img_login transition" src="images/img_g.png" alt="logon google" />
          </td>
        </tr> -->
        <tr>
          <td class="col2">
          <label>
            <?=_neuchuacotk?> <a href="dang-ky.html"><?=_dangky?>!</a> </br>
           <?=_laylaitai?> <a href="quen-mat-khau.html"><?=_day?>!</a></br>
          
           <input type="checkbox" class="checkbox" checked="checked" name="ghinho"/> <?=_ghinholansau?>
          </label>
          </td>
        </tr>
        <tr>
            <td class="col2">
                <input  type="submit" class="button" value="<?=_dangnhap?>"/>
                <input  type="reset" class="button" value="<?=_nhaplai?>"  />    
           </td>
        </tr>
    </table>                  
    </form>
</div>

<script language="javascript" src="plugin/dkdn_custom/jquery.validate.min.js"></script>
<script language="javascript" src="plugin/dkdn_custom/dkdn.js"></script>
<script type="text/javascript">
$(function() {
  $("#frmdangnhap").validate({
        messages:{
        email:{required:"<?=_nhap?> email!",email:"<?=_sai._dinhdang?> email!"},
        password:{required:"<?=_nhap._matkhau?>",minlength:"<?=_hon6kytu?>"}
       
        }
    });
});
</script>
<?php exit();?>