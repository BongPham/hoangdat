<link rel="stylesheet" type="text/css" href="js/dlmenu/component.css" />
<script src="js/dlmenu/modernizr.custom.js"></script>
<?php 
	$d->reset();
  	$sql = "select id,ten_$lang,tenkhongdau,thumb from #_product_list where hienthi=1 and type='product' order by stt,id desc";
  	$d->query($sql);
 	$pr_list1=$d->result_array();

 	$d->reset();
  	$sql = "select id,ten_$lang,tenkhongdau from #_album_list where hienthi=1 and type='album' order by stt,id desc";
  	$d->query($sql);
  	$ab_list1=$d->result_array();
?>
<div id="dl-menu" class="dl-menuwrapper">
	<button class="dl-trigger">Open Menu</button>
	<ul class="dl-menu">
		<li><a href='trang-chu.html' title="<?=_trangchu?>"><?=_trangchu?></a></li>

		<li>
			<a href='menu.html' title="<?=_menu?>"><?=_menu?></a>
			<ul class="dl-submenu">
				<?php for($i=0;$i<count($pr_list1);$i++){ ?>
				<li><a href="menu/<?=$pr_list1[$i]['tenkhongdau']?>" title="<?=$pr_list1[$i]['ten_vi']?>"><?=$pr_list1[$i]['ten_'.$lang]?></a></li>
				<?php } ?>
			</ul>
		</li>

		<li><a href='su-kien.html' title="<?=_sukien?>"><?=_sukien?></a></li>

		<li><a href='phan-hoi.html' title="<?=_phanhoi?>"><?=_phanhoi?></a></li>

		<li>
			<a href='thu-vien.html' title="<?=_thuvien?>"><?=_thuvien?></a>
			<ul class="dl-submenu">
				<?php for($i=0;$i<count($ab_list1);$i++){ ?>
				<li><a href="thu-vien/<?=$ab_list1[$i]['tenkhongdau']?>" title="<?=$ab_list1[$i]['ten_vi']?>"><?=$ab_list1[$i]['ten_'.$lang]?></a></li>
				<?php } ?>
			</ul>
		</li>

		<li><a href='lien-he.html' title="<?=_lienhe?>"><?=_lienhe?></a></li>

	</ul>
</div><!-- /dl-menuwrapper -->
<script src="js/dlmenu/jquery.dlmenu.js"></script>
<script>
	$(function() {
		$( '#dl-menu' ).dlmenu();
	});
</script>