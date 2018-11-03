<?php 
  @$id=  addslashes($_GET['id']);
  
?>

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
  $(document).ready(function() {

      $('.reblog').click(function(e) {
        var pid = $(this).data('rel');
        var soluong = 1;
        

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

<div class="khung">

<div class="content_khung">

  <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$title_detail?></h3>
      <div class="timkiem_nc">
      <?php include _template."layout/addon/timkiem_nc.php";?>
      </div>
  </div>
 
  <?php if(count($product)<=0){ ?>
    <div class="updating">Nội dung đang cập nhật......</div>
  <?php }else{ ?>
  <?php for($i=0;$i<count($product);$i++){ 

    $d->reset();
      $sql_detail_th = "select ten_vi from #_baiviet where hienthi=1 and type='thuonghieu' and id = '".$product[$i]['id_thuonghieu']."'";
      $d->query($sql_detail_th);
      $row_detail_th = $d->fetch_array();

    ?>
    <div class="col-lg-3 col-md-3 col-sm-4 col-xx-12 col-xs-12 wow fadeInLeft " data-wow-delay='0.<?=$i+4?>s'>
      <div class="product_item">
                    <div class="img_item_new">
                      <a href="san-pham/<?=$product[$i]['tenkhongdau']?>.html" title="<?=$product[$i]['ten']?>">
                        <img class="transition" src="<?=_upload_product_l?>172x172x2/<?=$product[$i]['photo']?>" alt="<?=$product[$i]['ten']?>" onerror="this.src='uplaod/hinhanh/172x172x1/noimage.png'"/>
                       </a>
                    </div>
                      <h3 class="pro_name">
                        <a href="san-pham/<?=$product[$i]['tenkhongdau']?>.html" title="<?=$product[$i]['ten']?>">
                        <?=$product[$i]['ten_vi']?>
                        </a>
                      </h3>
                      <div class="des_pro">
                      <span>Thương hiệu: </span><?=$row_detail_th['ten_vi']?>
                      </div>
                      <div class="gia">
                      <span class="f_price">
                        <?php if($product[$i]['giacu']==0) echo 'Liên hệ'; else echo number_format($product[$i]['giacu']).' VND'; ?>
                      </span>
                      <span class="m_price cl_red">
                        <?php if($product[$i]['giaban']==0) echo 'Liên hệ'; else echo number_format($product[$i]['giaban']).' VND'; ?>
                      </span>
                      </div>
                        
                  </div><!--end product--> 

    </div>
  <?php } ?>
    <div class="clear"></div>
    <div class="paging"><?=$paging?></div> 
  <?php } ?>

</div>
</div>

<div class="clear" style="height:15px;"></div>

<h1 class="visit_hidden fn vcard"><?=$row_setting['ten_'.$lang]?></h1>
<div class="clear" style="height:20px;"></div>