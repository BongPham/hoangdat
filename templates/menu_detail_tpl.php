<link href="js/magiczoomplus/magiczoomplus.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="js/magiczoomplus/magiczoomplus.js" type="text/javascript"></script>
<script type="text/javascript">
  $(document).ready(function() {

      $('.thanhtoannhanh').click(function(e) {
        var pid = $(this).data('id');
        var soluong = $('.soluong_12').val();
        if(soluong <= 0){
          alert('Bạn chưa chọn số lượng !');
          return false;
        }

        $.ajax({
          type: "POST",
          url: "ajax/add_giohang.php", 
          data: {pid:pid,soluong:soluong},
          success: function(string){
            var getData = $.parseJSON(string);   
            var result = getData.result_giohang;
            var count = getData.count;

            if(result > 0) {  
              $('.giohang_top span').html(count);   
              alert('Bạn đã thêm thành công sản phẩm này vào giỏ hàng');
              //window.location.href="thanh-toan.html";        
            }
            else if (result == -1)alert('Sản phẩm này không tồn tại');
            else if (result == 0)
              { alert('Sản phẩm này đã có trong giỏ hàng'); 
              //window.location.href="thanh-toan.html";      
          }
          }          
        });
      });

  });
</script>

<script language="javascript">
  function addtocart(pid){
    document.form_giohang.productid.value=pid;
    document.form_giohang.command.value='add';
    document.form_giohang.submit();
  }
</script>
<form name="form_giohang" action="index.php" method="post">
  <input type="hidden" name="productid" />
  <input type="hidden" name="command" />
</form>
<script type="text/javascript">
$(document).ready(function(e) {
  $('.owl-sp').owlCarousel({
    loop:false,
    margin:10,
    responsiveClass:true,
    nav:false,
    responsive:{
        0:{
            items:1,
            nav:false
        },
        600:{
            items:2,
            nav:false
        },
        1000:{
            items:3,
            nav:false,
            loop:false
        }
    }
  })
});
</script>
<style type="text/css">
  .title_sp{background:url(<?=_upload_product_l?>1366x285x1/<?=$row_ll['thumb']?>) no-repeat top center;background-size:cover;height:300px;text-align: center;color:#fff;}
</style>
<div id="sanpham">
<div class="title_sp"><h2><?=$row_ll['ten_'.$lang]?></h2></div><div class="clear" style="height:20px;"></div>
<div class="container">
<div class="box_khung">
<div class="content_khung">
    <div class="frm_spleft col-lg-9 col-md-9 col-sm-12 col-xs-12 col-xx-12">

        <div class="frame_images col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12" >
          <div class="app-figure" id="zoom-fig">
            <a href="<?=_upload_product_l.$row_detail['photo']?>" id="Zoom-1" class="MagicZoom" title="<?=$row_detail['ten_'.$lang]?> .">
            <img src="<?=_upload_product_l.$row_detail['photo']?>" alt="<?=$row_detail['ten_'.$lang]?>" width="250" /></a>
          </div>
          <div class="selectors">
            <?php include _template."layout/jssor.php";?>
          </div>
        </div>
        <div class="khung_thongtin col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12" >
          <h1><?=$row_detail['ten_'.$lang]?></h1><div class="clear"></div>
          <p class="gia_sp" style="text-align:justify;"><?php if($row_detail['giacu']==0) echo _lienhe; else echo number_format ($row_detail['giacu'],0,",",".")." VND"?></p>
          <p class="mota_sp" style="text-align:justify;"><?=$row_detail['mota_'.$lang]?></p>d
        </div>

    </div>
    <div class="frm_spright col-lg-3 col-md-3 col-sm-12 col-xs-12 col-xx-12">
      <div class="danhmuc_spright">
        <div class="title_danhmucright"><?=_danhmucsanpham?></div><div class="clear"></div>
        <div>
          <ul>
            <?php for($i=0;$i<count($row_list);$i++){ ?>
              <li><a href="menu/<?=$row_list[$i]['tenkhongdau']?>" title="<?=$row_list[$i]['ten_'.$lang]?>"><?=$row_list[$i]['ten_'.$lang]?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
    <div class="clear" style="height:25px;"></div>
    <div class="desc_product">
      <div class="title_desc"><h4><?=_chitietsanpham?></h4></div><div class="clear"></div>
      <div class="noidung_product">
        <?php if($row_detail['noidung_'.$lang]==''){ echo 'Updating.....';} ?>
        <?=$row_detail['noidung_'.$lang]?>
      </div>
    </div>

    <div class="clear" style="height:25px;"></div>
    <div class="title_pr"><?=_sanphamlienquan?></div><div class="clear"></div>
    <?php if(count($product)<=0) echo 'Updating.....';else{ ?>
    <div class="owl-sp">
      <?php for($i=0;$i<count($product);$i++){ ?>
        <div class="item_sp">
          <div class="img_sp">
            <a href="menu/<?=$product[$i]['tenkhongdau']?>.html" title="<?=$product[$i]['ten_'.$lang]?>"><img src="<?=_upload_product_l?>355x355x1/<?=$product[$i]['thumb']?>" alt="<?=$product[$i]['ten_'.$lang]?>" onerror='this.src="images/noimage.png"'></a>
          </div>
          <div class="info_sp">
            <a href="menu/<?=$product[$i]['tenkhongdau']?>.html" title="<?=$product[$i]['ten_'.$lang]?>"><h4><?=$product[$i]['ten_'.$lang]?></h4></a>
            <p class="mota_sp"><?=catchuoi($product[$i]['mota_'.$lang],100)?></p>
            <p class="gia_sp"><?php if($product[$i]['giacu']==0) echo _lienhe; else echo number_format ($product[$i]['giacu'],0,",",".")." VND"?></p>
          </div>
        </div>
      <?php } ?>
    </div>
    <?php } ?>
</div>
</div>
</div>
</div>

