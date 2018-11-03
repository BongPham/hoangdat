<link rel="stylesheet" type="text/css" href="plugin/dkdn_custom/style.css">

<div class="content">
 <div class="title_main">
    <h2><?=$title_cat?></h2>
  </div><!--end title_main-->
<div class="dkdn_box">
    <form method="post" name="frmdoimatkhau" action="lay-lai-mat-khau.html" id="frmdoimatkhau" enctype="multipart/form-data">
      <table class="table" cellpadding="0" cellspacing="0">
        <tr>
            <td class="col1">
               <label><?=_nhap._matkhau._moi?> : </label>
            </td>
            <td class="col2">
              <div class="box_input hover_box">
               <i class="fa fa-key"></i>
                <input name="password2" type="password" id="password2" class="input hover_box" required minlength="6" placeholder="<?=_nhap._matkhau._moi?>" />
              </div>
              <label id="password2-error" class="error" for="password2"></label>
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
                  <input type="password" name="re_password" class="input hover_box" required minlength="6" placeholder="<?=_nhaplaimatkhau?>" />
                </div>
                <label id="re_password-error" class="error" for="re_password"></label>
             </td>
             <td class="col3">
                  <?=_hon6kytu?>
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
       <td class="col1"></td>
       <td class="col2">
        <label>
         <?=_neuquenmatkhau?> <a  href="quen-mat-khau.html"><?=_day?>!</a>
         </label>
       </td>
       <td class="col3"></td>
     </tr>
        <tr>
           <td class="col1">
          </td>
          <td class="col2">
              <input  type="submit" class="button" value="<?=_doimatkhau?>"/>
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
  $("#frmdoimatkhau").validate({
        rules:{
          re_password:{equalTo:"#password2"}
        },
        messages:{
        password:{required:"<?=_nhap._matkhau?>",minlength:"<?=_hon6kytu?>"},
        password2:{required:"<?=_nhap._matkhau._moi?>",minlength:"<?=_hon6kytu?>"},
        re_password:{required:"<?=_nhaplaimatkhau?>",minlength:"<?=_hon6kytu?>!",equalTo:"<?=_nhaplaimatkhau._sai?>"},
        captcha:{required:"<?=_nhap?> <?=_captcha?>!"}
        }
    });
});
</script>