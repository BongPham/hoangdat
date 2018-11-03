<div class="logo"> <a href="#" target="_blank" onclick="return false;"> </a></div>
<div class="sidebarSep mt0"></div>
<!-- Left navigation -->
<ul id="menu" class="nav">
  <li class="dash" id="menu1"><a class=" active" title="" href="index.php"><span>Trang chủ</span></a></li>

 <li class="product_li <?php if($_GET['com']=='baiviet' || $_GET['com']=='product' || $_GET['com']=='booking' || $_GET['com']=='excel') echo ' activemenu' ?>" id="menu2"><a href="" title="" class="exp"><span>Sản phẩm</span><strong></strong></a>
    <ul class="sub">
      <li<?php if($_GET['act']=='man_list') echo ' class="this"'; ?>><a href="index.php?com=product&act=man_list&type=product">Quản lý danh mục 1</a></li>
      <li<?php if($_GET['act']=='man_cat') echo ' class="this"'; ?>><a href="index.php?com=product&act=man_cat&type=product">Quản lý danh mục 2</a></li>
       <li<?php if($_GET['act']=='man_item') echo ' class="this"'; ?>><a href="index.php?com=product&act=man_item&type=product">Quản lý danh mục nổi bật</a></li>
      <li<?php if($_GET['type']=='thuonghieu'&&$_GET['act']=='man') echo ' class="this"' ?>><a href="index.php?com=baiviet&act=man&type=thuonghieu">Quản lý thương hiệu</a></li>
      <li<?php if($_GET['act']=='man' && $_GET['com']!='order') echo ' class="this"' ?>><a href="index.php?com=product&act=man&type=product">Quản lý sản phẩm</a></li>
      <li<?php if($type!='order') echo ' class="this"' ?>>
      <a href="index.php?com=order&act=man&type=order">Quản lý đơn hàng</a></li>
    </ul>
  </li> 

  <li class="article_li <?php if($_GET['com']=='baiviet'||$_GET['com']=='info'||$_GET['com']=='albumproduct') echo ' activemenu' ?>" id="menu_bv"><a href="" title="" class="exp"><span>Bài viết</span><strong></strong></a>
    <ul class="sub">

      <li<?php if($_GET['type']=='gioithieu') echo ' class="this"' ?>><a href="index.php?com=info&act=capnhat&type=gioithieu">Cập nhật giới thiệu</a></li>

      <li<?php if($_GET['type']=='tamnhin') echo ' class="this"' ?>><a href="index.php?com=info&act=capnhat&type=tamnhin">Cập nhật tầm nhìn định hướng</a></li>

      <li<?php if($_GET['type']=='tongquan') echo ' class="this"' ?>><a href="index.php?com=info&act=capnhat&type=tongquan">Cập nhật tổng quan</a></li>

      <li<?php if($_GET['type']=='chinhsach') echo ' class="this"' ?>><a href="index.php?com=baiviet&act=man&type=chinhsach">Quản lý chính sách bán hàng</a></li>

      <li<?php if($_GET['type']=='chamsoc') echo ' class="this"' ?>><a href="index.php?com=baiviet&act=man&type=chamsoc">Quản lý chăm sóc khách hàng</a></li>

      <li<?php if($_GET['type']=='kienthuc') echo ' class="this"' ?>><a href="index.php?com=baiviet&act=man&type=kienthuc">Quản lý kiến thức tiêu dùng</a></li>


    </ul>
  </li>

  <!-- <li class="album_li<?php if($_GET['com']=='album') echo ' activemenu' ?>" id="menu_abs"><a href="#" title="" class="exp"><span>Thư viện ảnh</span><strong></strong></a>
    <ul class="sub">
      <li<?php if($_GET['act']=='man') echo ' class="this"' ?>><a href="index.php?com=album&act=man&type=album" title="">Danh sách thư viện</a></li>
    </ul>
  </li> 
 -->
  <li class="template_li<?php if($_GET['com']=='setting' || $_GET['com']=='newsletter' || $_GET['com']=='bannerqc'  || $_GET['com']=='company') echo ' activemenu' ?>" id="menu5"><a href="#" title="" class="exp"><span>Thông tin công ty</span><strong></strong></a>
    <ul class="sub">
      <li<?php if($_GET['type']=='logo') echo ' class="this"' ?>><a href="index.php?com=bannerqc&act=capnhat&type=logo" title="">Logo</a></li>
      <?php /*<li<?php if($_GET['type']=='banner') echo ' class="this"' ?>><a href="index.php?com=bannerqc&act=capnhat&type=banner" title="">Banner</a></li>*/ ?>
      <li<?php if($_GET['type']=='favicon') echo ' class="this"' ?>><a href="index.php?com=bannerqc&act=capnhat&type=favicon" title="">Favicon</a></li>
      <?php /*<li<?php if($_GET['type']=='popup') echo ' class="this"' ?>><a href="index.php?com=bannerqc&act=capnhat&type=popup" title="">Popup</a></li>*/ ?>
      <li<?php if($_GET['type']=='lienhe') echo ' class="this"' ?>><a href="index.php?com=company&act=capnhat&type=lienhe" title="">Liên hệ</a></li>
      <li<?php if($_GET['type']=='footer') echo ' class="this"' ?>><a href="index.php?com=company&act=capnhat&type=footer" title="">Footer</a></li>
      <li<?php if($_GET['com']=='setting') echo ' class="this"' ?>><a href="index.php?com=setting&act=capnhat" title="">Cấu hình chung</a></li>
      <li<?php if($_GET['com']=='lkweb') echo ' class="this"' ?>><a href="index.php?com=lkweb&act=man&type=lkweb" title="">Liên kết web</a></li>
      <?php /*<li<?php if($_GET['com']=='newsletter') echo ' class="this"' ?>><a href="index.php?com=newsletter&act=man" title="">Gửi Mail</a></li>*/ ?>
    </ul>
  </li>

    <li class="gallery_li<?php if($_GET['com']=='photo') echo ' activemenu' ?>" id="menu7"><a href="#" title="" class="exp"><span>Hình ảnh</span><strong></strong></a>
    <ul class="sub">

      <li<?php if($_GET['type']=='slider') echo ' class="this"' ?>><a href="index.php?com=photo&act=man_photo&type=slider" title="">Hình ảnh slider</a></li
     
    </ul>
  </li>
  

</ul>