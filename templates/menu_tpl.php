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
<style type="text/css">
  .title_sp{background:url(<?=_upload_product_l?>1366x285x1/<?=$row_detail['thumb']?>) no-repeat top center;background-size:cover;text-align: center;color:#fff;background-attachment: fixed;}
</style>
<div class="title_sp"><h2><?=$title_detail?></h2></div><div class="clear" style="height:20px;"></div>
<div id="sanpham">
<div class="container">
<div class="box_khung">
<div class="content_khung">
    
    <div class="frm_spleft col-lg-8 col-md-8 col-sm-12 col-xs-12 col-xx-12">
		  <?php if(count($product)!=0){ ?>
        <?php for($i=0;$i<count($product);$i++){ $dem1 ++; ?>
             
            <div class="xx col-lg-6 col-md-6 col-sm-6 col-xx-12 col-xs-12" style="padding-left:10px;padding-right:10px;border-radius:15px;oveflow:hidden;">
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
            </div>

        <?php } ?>
  		<?php } else { ?>
      <div class="updating"><?=_updating?></div>
      <?php } ?>
    </div>
    <div class="frm_spright col-lg-4 col-md-4 col-sm-12 col-xs-12 col-xx-12">
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
<div class="clear"></div>
<div class="paging"><?=$paging?></div> 

</div>
</div>
</div>
</div>

<h1 class="visit_hidden"><?=$row_setting['ten_'.$lang]?></h1>
<div class="clear" style="height:20px;"></div>