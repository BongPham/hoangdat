


<link href="js/magiczoomplus/magiczoomplus.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="js/magiczoomplus/magiczoomplus.js" type="text/javascript"></script>
<script type="text/javascript">
  $(document).ready(function() {

      $('.dathang').click(function(e) {
        var pid = $(this).data('id');
        var soluong = document.getElementById('soluong_12').value;
        var dungtich = document.getElementById("chonloai").value;
        var giadungtich = document.getElementById("giadungtich").value;
        if(soluong <= 0){
          alert('Bạn chưa chọn số lượng !');
          return false;
        }

        $.ajax({
          type: "POST",
          url: "ajax/add_giohang.php", 
          data: {pid:pid,soluong:soluong, dungtich:dungtich, giadungtich:giadungtich},
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

      $('#chonloai').change(function(){
        var id_gia = document.getElementById("chonloai").value;
        var id_sanpham = document.getElementById("id_sanpham").value;
        
        $.ajax({
          type: "POST",
          url: "ajax/load_gia.php", 
          data: {id_gia:id_gia, id_sanpham:id_sanpham},
          success: function(string){
            // document.getElementById("giadungtich").innerHTML  = string;  
            var span = document.getElementById("giadungtich");
            span.textContent = string;
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
  <input type="hidden" name="soluong" />
  <input type="hidden" name="dungtich" />
  <input type="hidden" name="giadungtich" />
</form>
<script type="text/javascript">
$(document).ready(function(e) {
  $('.owl-sp').owlCarousel({
    loop:true,
    margin:10,
    responsiveClass:true,
    nav:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:2,
            nav:false
        },
        1000:{
            items:3,
            nav:true,
            loop:true
        }
    }
  })
});
</script>

<script type="text/javascript">
  $(document).ready(function() {
    $("#content_tab div#tab1,#content_tab div#tab2,#content_tab div#tab3").hide(); // Initially hide all content
    $("#tabs li:first").attr("id","current"); // Activate first tab
    $("#tabs li:first a").attr("class","active");
    $("#content_tab div#tab1").fadeIn(); // Show first tab content

            
    $('#tabs a').click(function(e) {
        e.preventDefault();        
        $("#content_tab div#tab1,#content_tab div#tab2,#content_tab div#tab3").hide();    //Hide all content
        $("#tabs li").attr("id",""); 
        $("#tabs li a").attr("class","");//Reset id's
        $(this).parent().attr("id","current"); 
        $(this).attr("class","active");// Activate this
        $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
    });

    $('.booknow').click(function(event) {
      $("#tabs li:last").attr("id","current");
      $("#tabs li:last a").attr("class","active");
      $("#tabs li:first").attr("id","");
      $("#tabs li:first a").attr("class","");
      $("#content_tab div#tab1,#content_tab div#tab2,#content_tab div#tab3").hide();
      $("#content_tab div#tab3").fadeIn();
      $('html, body').animate({scrollTop: $("div#tab3").offset().top}, 'slow');
    });

  });
</script>

       <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3><?=$row_list[0]['ten_'.$lang]?></h3>
     
       </div>
       <div class="clear" style="height:10px;"></div>
      <div>
        <div class="frame_images wow fadeInLeft " data-wow-delay='0.5s' >
          <div class="app-figure" id="zoom-fig">
            <a href="<?=_upload_product_l.$row_detail['photo']?>" id="Zoom-1" class="MagicZoom" title="<?=$row_detail['ten_'.$lang]?> .">
            <img src="<?=_upload_product_l.$row_detail['photo']?>" alt="<?=$row_detail['ten_'.$lang]?>" width="250" onerror="this.src='uplaod/hinhanh/250x250x1/noimage.png'"/></a>
          </div>
          <div class="selectors">
            <?php include _template."layout/jssor.php";?>
          </div>
        </div>
      
        <div class="khung_thongtin wow fadeInRight " data-wow-delay='0.5s' >
          <h1 class="fn vcard"><?=$row_detail['ten_'.$lang]?></h1>
         
          <div class="clear"></div>
          <ul class="thongtinsanpham">
            <li class=" wow fadeInRight " data-wow-delay='0.7s'>
              <p class="p_left"><b>Thương hiệu: </b></p>
              <p class="p_right tenthuonghieu">
                 <a href="thuong-hieu/<?=$row_detail_th['tenkhongdau']?>.html" title="<?=$row_detail_th['ten_vi']?>">
                  <?=$row_detail_th['ten_vi']?>
                  </a>

              </p>
            </li>
             <?php if ($row_detail['masp'] != ''){?>
            <li class=" wow fadeInRight " data-wow-delay='0.7s'>
              <p class="p_left"><b>Mã sản phẩm: </b></p>
              <p class="p_right"><?=$row_detail['masp']?></p>
            </li>
            <?php } ?>
            <?php if ($row_detail['xuatxu'] != ''){?>
             <li class=" wow fadeInRight " data-wow-delay='0.7s'>
              <p class="p_left"><b>Xuất xứ: </b></p>
              <p class="p_right"><?=$row_detail['xuatxu']?></p>
            </li>
            <?php } ?>
            <?php if ($row_detail['baohanh'] != ''){?>
              <li class=" wow fadeInRight " data-wow-delay='0.7s'>
                <p class="p_left"><b>Bảo hành: </b></p>
                <p class="p_right"><?=$row_detail['baohanh']?></p>
              </li>

            <?php } ?>
            <?php if ($row_detail['thongtin_vi'] != ''){?>
            <li class=" wow fadeInRight " data-wow-delay='0.7s'>
              <p class="p_left"><b>Tình trạng: </b></p>
              <p class="p_right"><?=$row_detail['thongtin_vi']?></p>
            </li>
             <?php } ?>
           <!--  <li class=" wow fadeInRight " data-wow-delay='0.7s'>
              <p class="p_left"><b>Chọn số lượng: </b></p>
              <p class="p_right"><input type="number" value="1" id="soluong_12"></p>
            </li> -->

              <li class=" wow fadeInRight " data-wow-delay='0.9s'>
              <p class="p_left" style="text-align:justify;"><b>Giá bán: </b></p>
                <p class="p_right"><span class="gia_ban"><?php if($row_detail['giacu']==0) echo _lienhe; else echo number_format ($row_detail['giacu'],0,",",".")." VND"?></span></p>
              </li>
              <li class=" wow fadeInRight " data-wow-delay='0.9s'>
              <p class="p_left" style="text-align:justify;"><b>Giá khuyến mãi: </b></p>
                <p class="p_right"><span class="gia_sp"><?php if($row_detail['giaban']==0) echo _lienhe; else echo number_format ($row_detail['giaban'],0,",",".")." VND"?></span></p>
              </li>
              <li class=" wow fadeInRight " data-wow-delay='1s'><!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_native_toolbox"></div></li>   
    
                <li class=" wow fadeInRight " data-wow-delay='1.7s'>
                    <div class="dathang" id="img_giohang" onclick="addtocart(<?=$row_detail['id']?>)">
                      Đặt hàng
                    </div>
                </li>
              <li class=" wow fadeInRight " data-wow-delay='1.2s'><p>Hỗ trợ khách hàng:&nbsp;&nbsp;&nbsp;<span style="color:#F00;font-weight:bold;"><?=$row_setting['hotline']?> - <?=$row_setting['email']?></span></p></li>
         <?php if ($row_detail['mota_vi'] != ''){?>
            <li class=" wow fadeInRight " data-wow-delay='1.5s'><b>Mô tả sản phẩm: </b><br><?=$row_detail['mota_vi']?></br></li>
        <?php } ?>
          </ul>
        </div>
      </div>
      <div class="clear" style="height:15px;"></div>

      
    <div class="clear" style="height:15px;"></div>
    <?php if($row_detail['noidung_vi']!='' && $row_detail['thongso_vi']!=''){ ?>
      <ul id="tabs" class=" wow fadeInUp " data-wow-delay='0.6s'>
        <li><a href="#" title="tab1">Chi tiết sản phẩm</a></li>
        <li><a href="#" title="tab2"> Thông số kỹ thuật</a></li>
      </ul>
      <div class="clear"></div>
      <div id="content_tab" class=" wow fadeInUp " data-wow-delay='1s'>
        <div id="tab1">
          <div class="noidung_chitiet">
            <?php if($row_detail['noidung_vi']!=''){ ?>
              <?=$row_detail['noidung_vi']?>
            <?php }else{ ?>
              <div class="updating">Nội dung đang cập nhật......</div>
            <?php } ?>
          </div>
           <div class="clear" style="height:15px;"></div>
        </div>

        <div id="tab2">
          <div class="noidung_chitiet">
            <?php if($row_detail['thongso_vi']!=''){ ?>
              <?=$row_detail['thongso_vi']?>
            <?php }else{ ?>
              <div class="updating">Nội dung đang cập nhật......</div>
            <?php } ?>
          </div>
           <div class="clear" style="height:15px;"></div>
        </div>

        
      </div>

      <?php }elseif($row_detail['noidung_vi']!='' && $row_detail['thongso_vi'] ==''){ ?>
          <ul id="tabs" class=" wow fadeInUp " data-wow-delay='0.6s'>
            <li><a href="#" title="tab1">Chi tiết sản phẩm</a></li>
          </ul>
         <div class="noidung_chitiet">
            <?php if($row_detail['noidung_vi']!=''){ ?>
              <?=$row_detail['noidung_vi']?>
            <?php }else{ ?>
              <div class="updating">Nội dung đang cập nhật......</div>
            <?php } ?>
          </div>
      <?php  }elseif($row_detail['noidung_vi']=='' && $row_detail['thongso_vi'] !=''){ ?>
          <ul id="tabs" class=" wow fadeInUp " data-wow-delay='0.6s'>
            <li><a href="#" title="tab2"> Thông số kỹ thuật</a></li>
          </ul>
          <div class="noidung_chitiet">
            <?php if($row_detail['thongso_vi']!=''){ ?>
              <?=$row_detail['thongso_vi']?>
            <?php }else{ ?>
              <div class="updating">Nội dung đang cập nhật......</div>
            <?php } ?>
          </div>
      <?php  } ?>
      <div class="clear" style="height:25px;"></div>
       <div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3>Sản phẩm khác</h3></div><div class="clear" style="height:10px;"></div>
      <div class="clear" style="height:25px;"></div>
      <?php if(count($product)<=0){ ?>
        <div class="updating">Nội dung đang cập nhật......</div>
      <?php }else{ ?>
      <?php for($i=0;$i<count($product);$i++){ ?>
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
      <?php } ?>
        <div class="clear"></div>
        <div class="paging"><?=$paging?></div> 
      <?php } ?>

<div class="clear" style="height:20px;"></div>