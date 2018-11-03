<div class="title_sp"><h2></h2></div><div class="clear" style="height:20px;"></div>
<div id="sanpham">
<div class="container">
<div class="box_khung">
<div class="content_khung">

  <div class="frm_spleft col-lg-9 col-md-9 col-sm-12 col-xs-12 col-xx-12">

    <div class="title_news"><h1><?=$row_detail['ten_'.$lang]?></h1></div><div class="clear"></div>
    <div class='noidung_news'>
      <?=$row_detail['noidung_'.$lang]?>
    </div>

  </div>
  <div class="frm_spright col-lg-3 col-md-3 col-sm-12 col-xs-12 col-xx-12">

    <div class="danhmuc_spright newss">
      <div class="title_danhmucright"><?=_tintuclienquan?></div><div class="clear"></div>
      <div>
        <ul>
          <?php for($i=0;$i<count($tintuc);$i++){ ?>
            <li><a style="text-transform:none;" href="menu/<?=$tintuc[$i]['tenkhongdau']?>" title="<?=$tintuc[$i]['ten_'.$lang]?>"><?=$tintuc[$i]['ten_'.$lang]?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>

  </div>

</div>
</div>
</div>
</div>