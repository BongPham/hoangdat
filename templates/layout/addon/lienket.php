<?php
	$d->reset();
	$sql = "select * from #_lkweb where hienthi=1 and type='lkweb' order by stt,id desc ";
	$d->query($sql);
	$lienket = $d->result_array();
?>

<div class="lienket">
<span>Theo dõi chúng tôi</span>
<?php for($i=0;$i<count($lienket);$i++){?>
	<a href="<?=$lienket[$i]['url']?>" target="_blank"><img src="<?=_upload_hinhanh_l?>25x20x2/<?=$lienket[$i]['photo']?>" alt="<?=$lienket[$i]['ten_'.$lang]?>" /></a>
<?php } ?>
</div>
