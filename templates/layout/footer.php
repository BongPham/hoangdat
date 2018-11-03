<?php
	$d->reset();
	$sql = "select id,ten_$lang,tenkhongdau from #_baiviet where hienthi=1 and type='chamsoc' order by stt asc";
	$d->query($sql);
	$rs_chamsoc = $d->result_array();

	$d->reset();
	$sql = "select id,ten_$lang,tenkhongdau from #_baiviet where hienthi=1 and type='chinhsach' order by stt asc";
	$d->query($sql);
	$rs_chinhsach = $d->result_array();

?>


<div id="bottom">
<div class="container">
<div class="content_container">

	<div class="col-lg-6 col-md-6 col-sm-12 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.5s'>
		<div class="thongtin_bt">
			<?=$footer['noidung_'.$lang]?>
		</div>
	</div>

	<div class="col-lg-3 col-md-3 col-sm-6 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.7s'>
		<h3 class="h3_footer">Chăm sóc khách hàng</h3>
		<ul class="chamsoc">
			<?php 
			if(count($rs_chamsoc) > 0){
              for($l=0;$l<count($rs_chamsoc);$l++){
            ?>
            <li>
                 <a href="cham-soc-khach-hang/<?=$rs_chamsoc[$l]['tenkhongdau']?>.html" title='<?=$rs_chamsoc[$l]['ten_vi']?>'>
                    <?=$rs_chamsoc[$l]['ten_vi']?>
                </a>
            </li>
            <?php
              } 
            }
            ?>
		</ul>
	</div>

	<div class="col-lg-3 col-md-3 col-sm-6 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='1s'>
		<h3 class="h3_footer">Chính sách bán hàng</h3>
		<ul class="chamsoc">
			<?php 
			if(count($rs_chinhsach) > 0){
              for($o=0;$o<count($rs_chinhsach);$o++){
            ?>
            <li>
                 <a href="chinh-sach/<?=$rs_chinhsach[$o]['tenkhongdau']?>.html" title='<?=$rs_chinhsach[$o]['ten_vi']?>'>
                    <?=$rs_chinhsach[$o]['ten_vi']?>
                </a>
            </li>
            <?php
              } 
            }
            ?>
		</ul>
	</div>
	
</div>
</div>
</div>
<div class="copyright">
	<div class="container ">
	<span>
		&copy; Copyright 2018 <b><?=$row_setting["ten_$lang"]?></b>, All Rights Reserved. Design by <a href="" target="_blank" ><b>HTteams</b> </a>
	</span>
		
	</div>
</div>
<div class="clear"></div>