<?php /*<link rel="stylesheet" href="js/picker/default.css">
<link rel="stylesheet" href="js/picker/default.date.css">
<link rel="stylesheet" href="js/picker/default.time.css">*/ ?>

<div id="sanpham">
<div class="container">
<div class="content_khung">

        <div class="thanh_index wow fadeInLeft " data-wow-delay='0.5s'><h2><?=$title_detail?></h2></div><div class="clear" style="height:10px;"></div>

        <div class="frm_booking">
            <form action="booking.html" method="post" accept-charset="utf-8" id="booking" class="booking">
            <div class="button_sub"><?=_vuilongnhapdayduthongtintrenform?></div>
              <div class="frm_left loaiphong col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12">
                <p><label><?=_tenkhach?></label></p>
                <p><input type="text" name="tenbook" id="tenbook" required="required"></p>
                <p><label>Email</label></p>
                <p><input type="text" name="emailbook" id="emailbook"></p>
                <p><label><?=_dienthoai?></label></p>
                <p><input type="text" name="dienthoaibook" id="dienthoaibook" required="required"></p>
                <p><label><?=_songuoilon?></label></p>
                <p><input type="number" min="1" max="1000" name="sokhach" id="sokhach" required="required" value=""></p>
                <p><label><?=_sotreem?></label></p>
                <p><input type="number" min="0" max="1000" name="sotreem" id="sotreem" required="required" value=""></p>
                <p><label><?=_noidungthem?></label></p>
                <p><textarea name="noidung" id="noidung"></textarea></p>
              </div>

              <div class="frm_left loaiphong col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12">
                <p><label><?=_ngayden?></label></p>
                <p><input name="ngayden" id="ngayden" type="text" placeholder="<?=_ngayden?>..." required="required" value=""></p>
                <p><label><?=_ngaydi?></label></p>
                <p><input id="ngaydi" name="ngaydi" type="text" placeholder="<?=_ngaydi?>..." required="required" value=""></p>
                <p><label><?=_loaiphong?></label></p>
                <?php for($i=0;$i<count($ds_phong);$i++){ 
                  $d->reset();
                  $sql = "select id,ten_$lang,tenkhongdau,thumb from #_product where hienthi=1 and type='product' and id_list='".$ds_phong[$i]['id']."' ";
                  $d->query($sql);
                  $row_phong = $d->result_array();
                ?>
                    <p>
                      <a href="nhi-nhi-hotel/<?=$ds_phong[$i]['tenkhongdau']?>" title="<?=$ds_phong[$i]['ten_'.$lang]?>"><?=$ds_phong[$i]['ten_'.$lang]?></a>
                      <?php for($j=0;$j<count($row_phong);$j++){ ?>
                        <p class="loaiphong_con">
                          <input value="<?=$row_phong[$j]['ten_vi']?>" name="loaiphong" type="radio" <?php if($row_phong[$j]['tenkhongdau']==$_GET['id']) echo 'checked="checked"'; ?> style="width:20px;border:none;position:relative;top:2px;">&nbsp;&nbsp;&nbsp;<a href="nhi-nhi-hotel/<?=$row_phong[$j]['tenkhongdau']?>.html" title="<?=$row_phong[$j]['ten_vi']?>"><?=$row_phong[$j]['ten_'.$lang]?></a>
                        </p>
                      <?php } ?>
                    </p>
                <?php } ?>
                <p><label><?=_soluongphong?></label></p>
                <p><input type="number" min="1" max="1000" value='' name="sophong" id="sophong" required="required" ></p>
                <div class="button_sub" style="text-align:left;"><button type="submit" name="sub_book" id="sub_book" value="<?=_gui?>"><?=_gui?></button></div>
              </div>
            </form>
        </div>

</div>
</div>
</div>

<h1 class="visit_hidden fn vcard "><?=$row_setting['ten_'.$lang]?></h1>
<div class="clear" style="height:20px;"></div>

<?php /*<script src="js/picker/picker.js"></script>
<script src="js/picker/picker.date.js"></script>
<script src="js/picker/picker.time.js"></script>
<script src="js/picker/main.js"></script>*/ ?>