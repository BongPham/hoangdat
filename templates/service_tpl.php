<div id="info">
      
      <div class="khung">       

      <div class="thanh_title"><h2><?=$title_detail?></h2></div>
      <div>
      <?php for($i=0, $count_tt=count($tintuc);$i<$count_tt;$i++){  ?> 
        <div class="box_new">
            <a href="<?=$com?>/<?=$tintuc[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_baiviet_l.$tintuc[$i]['thumb']?>" border="0" align="left" width="140"  /></a>

            <h3><a href="<?=$com?>/<?=$tintuc[$i]['tenkhongdau']?>.html" ><?=$tintuc[$i]['ten_'.$lang]?></a></h3>
            <?=_substr($tintuc[$i]['mota_'.$lang],225)?>
            <div class="xemtiep"><a href="<?=$com?>/<?=$tintuc[$i]['tenkhongdau']?>.html" >Xem Tiếp </a></div>
        </div>
       <?php }?>
       </div>
       <div align="center" ><div class="paging"><?=$paging?></div></div>

      </div>
</div> 