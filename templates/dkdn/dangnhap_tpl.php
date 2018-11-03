<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">

<div class="content">
<div class="title_main">
  <h2><?=$title_cat?></h2>
</div>
<div class="dkdn_box">
              <form method="post" name="frmdangnhap" action="dang-nhap.html" id="frmdangnhap" enctype="multipart/form-data">
                <table class="table" cellpadding="0" cellspacing="0">
                 <tr>
                     <td class="col1">
                        <label>Email : </label> 
                     </td>
                     <td class="col2">
                        <div class="box_input hover_box">
                          <i class="fa fa-user"></i>
                          <input type="email" name="email" id="email_kt" class="input " value="<?=($_POST['email']=='')?$cookie_us:$_POST['email']?>" required minlength="6"  placeholder="Email"  />  
                        </div>
                        <label id="email_kt-error" class="error" for="email_kt"></label>
                     </td>
                     <td class="col3">
                          Format: email@gmail.com
                     </td>
                 </tr>   
                 <tr>
                     <td class="col1">
                         <label><?=_matkhau?> : </label>
                     </td>
                      <td class="col2">
                        <div class="box_input hover_box">
                         <i class="fa fa-key"></i>
                          <input name="password" type="password" id="password" class="input hover_box" value="<?=($_POST['password']=='')?$cookie_ps:$_POST['password']?>" required minlength="6" placeholder="<?=_matkhau?>"/>
                        </div>
                        <label id="password-error" class="error" for="password"></label>
                     </td>
                     <td class="col3"> <?=_hon6kytu?></td>
                 </tr>
                 <!-- <tr>
                  <td class="col1"></td>
                  <td class="col2">
                    <img onClick="loginFb()" class="img_login transition" src="images/img_f.png" alt="login facebook" />
                    <img onClick="login()" class="img_login transition" src="images/img_g.png" alt="logon google" />
                  </td>
                </tr> -->
               <tr>
                 <td class="col1"></td>
                 <td class="col2">
                  <label>
                    <?=_neuchuacotk?> <a href="dang-ky.html"><?=_dangky?>!</a> </br>
                   <?=_laylaitai?> <a href="quen-mat-khau.html"><?=_day?>!</a></br>
                  
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
</div>
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