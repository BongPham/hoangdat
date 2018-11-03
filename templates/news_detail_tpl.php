<div id="sanpham">

<div class="box_khung">

  <div class="frm_spleft col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12 wow fadeInRight " data-wow-delay='0.5s'>

    <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$row_detail['ten_'.$lang]?></h3></div><div class="clear" style="height:10px;"></div>
    <div class="noidung_news wow fadeInLeft " data-wow-delay='0.2s'>
      <?php if(count($hinhanh)>0) { include _template."layout/hinhanh.php"; echo '<div class="clear" style="height:20px;"></div>'; } ?>
      <?php if(count($album)>0) { include _template."layout/album.php"; echo '<div class="clear" style="height:20px;"></div>'; } ?>
      <?=$row_detail['noidung_'.$lang]?>
      <div class="addthis_native_toolbox"></div>
    </div>
    <div class="clear"></div>
    <div class="tin_hid">
      <div class="title_danhmucright"><?=_tintuclienquan?></div><div class="clear"></div>
      <div>
        <ul>
          <?php for($i=0;$i<count($tintuc);$i++){ ?>
            <li><a style="text-transform:none;" href="<?=$com?>/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_'.$lang]?>"><?=$tintuc[$i]['ten_'.$lang]?></a></li>
          <?php } ?>
        </ul>
      </div>
      <div class="clear" style="height:20px;"></div>
    </div>

  </div>
  <div class="frm_spright col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12">
    <div id="scroll-left">
      <div class="danhmuc_spright newss">
        <div class="title_danhmucright wow fadeInLeft " data-wow-delay='0.5s'><?=_tintuclienquan?></div><div class="clear"></div>
        <div>
          <ul>
            <?php for($i=0;$i<count($tintuc);$i++){ ?>
              <li><a style="text-transform:none;" href="<?=$com?>/<?=$tintuc[$i]['tenkhongdau']?>.html" title="<?=$tintuc[$i]['ten_'.$lang]?>"><?=$tintuc[$i]['ten_'.$lang]?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="clear" style="height: 20px;"></div>
</div>
</div>
