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

    <div id="sanpham">
          <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$title_detail?></h3></div><div class="clear" style="height:10px;"></div>

        <div class="khung">

          <div>

            <?php if(count($product)!=0){?>
        <?php for($i=0;$i<count($product);$i++){ $dem1 ++; ?>
             
                <div class="col-lg-3 col-md-3 col-sm-6 col-xx-6 col-xs-12 wow fadeInLeft " data-wow-delay='0.<?=$i+4?>s'>
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

          
          <?php if(($i+1)%4==0) echo '<div class="clear" style="height:35px;"></div>'; ?>
        <?php } ?>
    <?php } else { ?>
    <div class="updating">Không tìm thấy sản phẩm nào phù hợp...</div>
    <?php }?>

          </div>

        </div>
        <div class="paging"><?=$paging['paging']?></div> 
    </div>