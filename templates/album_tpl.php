<div id="sanpham">
<div class="container">
<div class="content_khung">

    <div class="thanh_index"><h3><?=$title_detail?></h3></div><div class="clear" style="height:10px;"></div>
        
    <?php if(count($album)<=0) { ?><div class="updating">Nội dung đang cập nhật......</div><?php }else{ ?>
        <?php for($i=0;$i<count($album);$i++){ ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xx-6 col-xs-12">
            <div class="item_album">
              <div class="img_album">
                <a href="thu-vien-anh/<?=$album[$i]['tenkhongdau']?>.html" title="<?=$album[$i]['ten_vi']?>">
                  <img src="<?=_upload_album_l?>297x327x1/<?=$album[$i]['photo']?>" alt="<?=$album[$i]['ten_vi']?>" onerror="this.src='uplaod/hinhanh/297x327x1/noimage.png'"/>
                  <h3><?=$album[$i]['ten_vi']?></h3>
                </a>
                <span class="mask_album"><a href="thu-vien-anh/<?=$album[$i]['tenkhongdau']?>.html" title="<?=$album[$i]['ten_vi']?>">Chi tiết</a></span>
              </div>
            </div>
        </div>
        <?php } ?>
    <?php }?>
    <div class="clear"></div>
    <div class="paging"><?=$paging?></div> 

</div>
</div>
</div>
<h1 class="visit_hidden fn vcard "><?=$row_setting['ten_'.$lang]?></h1></div>