

  	<!-- <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$title_detail?></h3></div><div class="clear" style="height:10px;"></div> -->
    <div class="thanh_index"><h3><?=$title_detail?></h3></div>
        <div class="clear" style="height:10px;"></div>
  	<div class="clear"></div>
  	<div class="noidung wow fadeInRight " data-wow-delay='0.7s'>
  	<?php if($row_detail['noidung_'.$lang]!=''){ ?>
  		<?=$row_detail['noidung_'.$lang]?>
  	<?php }else{ ?>
  		<div class="updating">
  			Nội dung đang cập nhật......
  		</div>
  	<?php } ?>
  	</div>
  	<div class="clear"></div>
  	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<div class="addthis_native_toolbox"></div>

<div class="clear" style="height:20px;"></div>
  <h1 class="visit_hidden fn vcard "><?=$row_setting['ten_'.$lang]?></h1>