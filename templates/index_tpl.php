<!--  -->
<script type="text/javascript">
  $(document).ready(function() {

      $('.dathang').click(function(e) {
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
              $('#giohang p').html(count);   
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
<script language="javascript" src="js/my_script.js"></script>


  <div class="clear" style="height:10px;"></div>
<!-- nổi bật -->
<div class="khung">
<div class="container">
<div class="content_khung ">
  <div class="box bor_box pros_home">
    <?php 

       $d->reset();
        $sql_spnoibat = " select id,ten_$lang as ten,photo,tenkhongdau,mota_$lang as mota, giaban, giacu, id_thuonghieu from #_product where hienthi=1 and type='product' and noibat <> 0 order by stt asc";
        $d->query($sql_spnoibat);
        $product_noibat = $d->result_array();

        if(count($product_noibat) > 0){
    ?>
    <div class="thanh_index">
          <span>
            Sản phẩm nổi bật
          </span>
    </div>
    <div class="clear" style="height:10px;"></div>
      
      
      <div class="owl-carousel_sp_noibat">
        <?php 
          
          for($n=0;$n<count($product_noibat);$n++){ 


              $d->reset();
              $sql_th = " select ten_vi from #_baiviet where hienthi=1 and type='thuonghieu' and id = '".$product_noibat[$n]['id_thuonghieu']."'";
              $d->query($sql_th);
              $product_th_noibat = $d->fetch_array();      


            ?>
    
              <div class="product_item">
                    <div class="img_item_new">
                      <a href="san-pham/<?=$product_noibat[$n]['tenkhongdau']?>.html" title="<?=$product_noibat[$n]['ten']?>">
                        <img class="transition" src="<?=_upload_product_l?>172x172x2/<?=$product_noibat[$n]['photo']?>" alt="<?=$product_noibat[$n]['ten']?>" onerror="this.src='uplaod/hinhanh/172x172x1/noimage.png'"/>
                       </a>
                    </div>
                      <h3 class="pro_name">
                        <a href="san-pham/<?=$product_noibat[$n]['tenkhongdau']?>.html" title="<?=$product_noibat[$n]['ten']?>">
                        <?=$product_noibat[$n]['ten']?>
                        </a>
                      </h3>
                      <div class="des_pro">
                      <span>Thương hiệu: </span><?=$product_th_noibat['ten_vi']?>
                      </div>
                      <div class="gia">
                      <span class="f_price">
                        <?php if($product_noibat[$n]['giacu']==0) echo 'Liên hệ'; else echo number_format($product_noibat[$n]['giacu']).' VND'; ?>
                      </span>
                      <span class="m_price cl_red">
                        <?php if($product_noibat[$n]['giaban']==0) echo 'Liên hệ'; else echo number_format($product_noibat[$n]['giaban']).' VND'; ?>
                      </span>
                      </div>
                        
                  </div><!--end product--> 

        <?php
          }
        ?>
      </div>
    <?php 
    } ?>
  </div>
</div>
</div>
</div>
 <div class="clear" style="height: 10px;"></div>
<div class="khung">
<div class="container">
<div class="content_khung ">
  <?php if(count($rs_list)<=0){ ?>
    <div class="updating">Nội dung đang cập nhật......</div>
  <?php }else{ ?>
  <?php for($i=0;$i<count($rs_list);$i++){ 
     $d->reset();
      $sql_ = " select id,ten_$lang as ten,photo,tenkhongdau,mota_$lang as mota, giaban, giacu, id_thuonghieu from #_product where hienthi=1 and type='product' and id_list = '".$rs_list[$i]['id']."' order by stt asc";
      $d->query($sql_);
      $product = $d->result_array();

      if(count($product) > 0){
  ?>
  <div class="box bor_box pros_home">
      <div class="thanh_index">
        <span>
          <a href="san-pham/<?=$rs_list[$i]['tenkhongdau']?>" title="<?=$rs_list[$j]['ten_vi']?>">
            <?=$rs_list[$i]['ten_vi']?>
          </a>
        </span>
        <div class="subcate">

            <?php
             $d->reset();
            $sql_cat = " select id,ten_$lang, tenkhongdau from #_product_cat where hienthi=1 and type='product' and id_list = '".$rs_list[$i]['id']."' order by stt asc limit 6";
            $d->query($sql_cat);
            $product_cat = $d->result_array();
            if(count($product_cat) > 0){
              for($l=0;$l<count($product_cat);$l++){
            ?>
            <h4>
                 <a href="san-pham/<?=$rs_list[$i]['tenkhongdau']?>/<?=$product_cat[$l]['tenkhongdau']?>" title='<?=$product_cat[$l]['ten_vi']?>'>
                    <?=$product_cat[$l]['ten_vi']?>
                </a>
            </h4>
            <?php
              } 
            }
            ?>
            <a href="san-pham/<?=$rs_list[$i]['tenkhongdau']?>" title='Xem tất cả'>
              Xem tất cả
          </a>
        </div>

      </div>
      <div class="clear" style="height:10px;"></div>
      
      
      <div class="owl-carousel_sp">
        <?php 
          
          for($j=0;$j<count($product);$j++){ 


              $d->reset();
              $sql_th = " select ten_vi from #_baiviet where hienthi=1 and type='thuonghieu' and id = '".$product[$j]['id_thuonghieu']."'";
              $d->query($sql_th);
              $product_th = $d->fetch_array();      


            ?>
    
              <div class="product_item">
                    <div class="img_item_new">
                      <a href="san-pham/<?=$product[$j]['tenkhongdau']?>.html" title="<?=$product[$j]['ten']?>">
                        <img class="transition" src="<?=_upload_product_l?>172x172x2/<?=$product[$j]['photo']?>" alt="<?=$product[$j]['ten']?>" onerror="this.src='uplaod/hinhanh/172x172x1/noimage.png'"/>
                       </a>
                    </div>
                      <h3 class="pro_name">
                        <a href="san-pham/<?=$product[$j]['tenkhongdau']?>.html" title="<?=$product[$j]['ten']?>">
                        <?=$product[$j]['ten']?>
                        </a>
                      </h3>
                      <div class="des_pro">
                      <span>Thương hiệu: </span><?=$product_th['ten_vi']?>
                      </div>
                      <div class="gia">
                      <span class="f_price">
                        <?php if($product[$j]['giacu']==0) echo 'Liên hệ'; else echo number_format($product[$j]['giacu']).' VND'; ?>
                      </span>
                      <span class="m_price cl_red">
                        <?php if($product[$j]['giaban']==0) echo 'Liên hệ'; else echo number_format($product[$j]['giaban']).' VND'; ?>
                      </span>
                      </div>
                        
                  </div><!--end product--> 

        <?php
          }
        ?>
      </div>

     </div>
     <div class="clear" style="height: 10px;"></div>
  <?php } } } ?>


</div>

</div>
</div>

<div class="clear"></div>


<div class="clear"></div>

<h1 class="visit_hidden vcard fn"><?=$row_setting['ten_'.$lang]?></h1>

 <script>
           
             var owl = $('.owl-carousel_sp');
              owl.owlCarousel({
                  items:5,
                  nav:false,
                  loop:true,
                  margin:10,
                  autoplay:true,
                  autoplayTimeout:2000,
                  autoplayHoverPause:true,
                  smartSpeed: 1000,
                  navSpeed : 500,
                  dots : false,
                  responsive:{
                                    0:{items:2},
                                    320:{items:2},
                                    480:{items:2},
                                    640:{items:2},
                                    768:{items:4},
                                    980:{items:5},
                                    1200:{items:5}
                                }
              });
              var owl = $('.owl-carousel_sp_noibat');
              owl.owlCarousel({
                  items:5,
                  nav:false,
                  loop:true,
                  margin:10,
                  autoplay:true,
                  autoplayTimeout:2000,
                  autoplayHoverPause:true,
                  smartSpeed: 1000,
                  navSpeed : 500,
                  dots : false,
                  responsive:{
                                    0:{items:2},
                                    320:{items:2},
                                    480:{items:2},
                                    640:{items:2},
                                    768:{items:4},
                                    980:{items:5},
                                    1200:{items:5}
                                }
              });
          </script>