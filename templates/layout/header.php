
<div class="container">
<div class="content_container">


  <div class="col-lg-3 col-md-3 col-sm-12 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.5s'>
    <div id="logo" class=" wow fadeInDown " data-wow-delay='0.5s'>
      <a href="trang-chu.html" title="Trang chủ"><img src="<?=_upload_hinhanh_l?>200x100x1/<?=$logo_top['photo_vi']?>" alt="Trang chủ"></a>
    </div>
  </div>

  <div class="col-lg-7 col-md-7 col-sm-12 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.5s'>
    <?php include _template."layout/addon/timkiem.php"; ?>
    <div class="timnhanh">
      Tìm nhanh:
    </div>
  </div>
  
  <div class="col-lg-2 col-md-2 col-sm-12 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.5s'>
      <div id="giohang">
        <!-- <a href="gio-hang.html" title="Xem giỏ hàng">
          <img src="images/icon_giohang.png">
          <span class="count_cart"><?=count($_SESSION['cart'])?></span>
        </a> -->
        <a href="gio-hang.html" title="Xem giỏ hàng" class="quick_quotes cl_white">Giỏ Hàng 
        <span id="sp_total_product_in_cart_header" class="count_cart"><?=count($_SESSION['cart'])?></span> <span id="sp_total_amount_in_cart_header"></span></a>
      </div>

</div> 
</div>

<!-- <div class="cnt_top_b hid">
  <div id="footer1" style="">
    <table style="" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td><a class="link_title blink_me" href="tel:<?=$row_setting['hotline']?>"><img src="images/goidien.png"> Gọi điện</a></td>

          <td height="50"><a class="link_title" href="booking.html"><img src="images/booknow.png"> SMS</a></td> 

          <td><a class="link_title" href="lien-he.html"><img src="images/chiduong.png">&nbsp;Chỉ đường</a></td>
        </tr>
      </tbody>
    </table>
  </div>
</div> -->