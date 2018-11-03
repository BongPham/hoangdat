<style type="text/css" media="screen">
    .title_sp{background:url('<?=_upload_hinhanh_l?>1366x300x1/<?=$tintuc[0]['thumb']?>') no-repeat;background-attachment: fixed;background-size:cover;}
    .title_sp h2{color:#fff !important;}
</style>
<div class="title_sp"><h2><?=$title_detail?></h2></div><div class="clear" style="height:20px;"></div>
<div id="sanpham">
<div class="container">
<div class="box_khung">
<div class="content_khung">

          <?php if(count($tintuc)<=0) { ?><div class="updating"><?=_updating?></div><?php }else{ ?>
            <?php for($i=0, $count_tt=count($tintuc);$i<$count_tt;$i++){ ?> 

              <?php if(($i+1)%2==0){ ?>
                <div class="news_left n_left col-lg-4 col-md-4 col-sm-12 col-xs-12 col-xx-12">
                  <a href="video/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_vi']?>"><h3><?=$tintuc[$i]['ten_'.$lang]?></h3></a>
                  <p>✻</p>
                  <p class="ndang"><?=$tintuc[$i]['luotxem']?> views - <?=date('M/j/Y',$tintuc[$i]['ngaytao']);?></p>
                </div>
                <div class="news_right col-lg-8 col-md-8 col-sm-12 col-xs-12 col-xx-12">
                  <a href="video/<?=$tintuc[$i]['tenkhongdau']?>.html" ><img src="<?=_upload_hinhanh_l?>800x300x1/<?=$tintuc[$i]['thumb']?>" border="0" align="left" style="width:100%;height:auto;max-height:300px;"/></a>
                </div>
                <div class="clear" style="height:20px;"></div>
              <?php }else{ ?>
                <div class="news_left col-lg-8 col-md-8 col-sm-12 col-xs-12 col-xx-12">
                    <a href="video/<?=$tintuc[$i]['tenkhongdau']?>.html" >
                    <img src="<?=_upload_hinhanh_l?>800x300x1/<?=$tintuc[$i]['thumb']?>" border="0" align="left" style="width:100%;height:auto;max-height:300px;"/>
                  </a>
                </div>
                <div class="news_right n_left  col-lg-4 col-md-4 col-sm-12 col-xs-12 col-xx-12">
                  <a href="video/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_vi']?>"><h3><?=$tintuc[$i]['ten_'.$lang]?></h3></a>
                    <p>✻</p>
                    <p class="ndang"><?=$tintuc[$i]['luotxem']?> views - <?=date('M/j/Y',$tintuc[$i]['ngaytao']);?></p>
                </div>
                <div class="clear" style="height:20px;"></div>

              <?php } ?>


            <?php }?>
          <div align="center" ><div class="paging"><?=$paging?></div></div>
        <?php } ?>
</div>
</div>
</div>
</div>