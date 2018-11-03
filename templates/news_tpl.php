
    <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$title_detail?></h3></div><div class="clear" style="height:10px;"></div>
    <div class="clear" style="height:20px;"></div>
    <?php if(count($tintuc)<=0){ ?>
        <div class="updating">Nội dung đang cập nhật......</div>
    <?php }else{ ?>
        <?php for($i=0;$i<count($tintuc);$i++){ ?>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xx-12 col-xs-12 wow fadeInUp " data-wow-delay='0.<?=$i+3?>s'>
          <div class="item_tintuc">
            <div class="img_tintuc">
              <a href="tin-tuc/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_vi']?>"><img src="<?=_upload_baiviet_l?>390x175x2/<?=$tintuc[$i]['photo']?>" alt="<?=$tintuc[$i]['ten_vi']?>" onerror="this.src='upload/hinhanh/390x195x1/noimage.png'" /></a>
            </div>
            <div class="info_tintuc">
              <a href="tin-tuc/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_vi']?>"><?=$tintuc[$i]['ten_vi']?></a>
              <p><?=catchuoi($tintuc[$i]['mota_vi'],250)?></p>
            </div>
          </div>
        </div>
        <?php } ?>
    <?php } ?>

    <div align="center" ><div class="paging"><?=$paging?></div></div>

<h1 class="visit_hidden fn vcard "><?=$row_setting['ten_'.$lang]?></h1>
<div class="clear" style="height:20px;"></div>