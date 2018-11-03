<?php 
  $d->reset();
  $sql = "select id,ten_$lang,tenkhongdau from #_product_list where hienthi=1 and type='product' order by stt asc";
  $d->query($sql);
  $listsp_ = $d->result_array();

  $d->reset();
  $sql1 = "select id,ten_$lang,tenkhongdau, photo, giaban, giacu from #_product where hienthi=1 and type='product' and banchay <> 0 order by stt asc";
  $d->query($sql1);
  $spkm = $d->result_array();

?>
      <div id="top_main">
            
            <div class="all_categories three columns">
              <div class="show_menu hover">
                <div class="tab_cate"> <i class="ico ico_menu"></i>TẤT CẢ DANH MỤC</div>
                <div id="main_cate_menu" >
                  <ul class="ul_danhmuc">
                     <?php for ($i=0,$count=count($listsp_); $i < $count; $i++) { 

                       $d->query("select id,ten_vi,tenkhongdau from #_product_cat where id_list = '".$listsp_[$i]['id']."' and type='product' and hienthi=1 order by stt,id desc");
                                          $cat=$d->result_array();
                    ?>
                    <li class="m_li">
                      
                        <a class="t_menu" href="san-pham/<?=$listsp_[$i]["tenkhongdau"]?>"  title="<?=$listsp_[$i]["ten_vi"]?>">
                         <?=$listsp_[$i]["ten_vi"]?> 
                        </a>
                       

                        <ul class="list_categories">
                            <li class="pc_menu">
                              <span>Nổi bật</span>
                              <ul>
                                <?php 
                                $d->query("select id,ten_vi,tenkhongdau from #_product_item where id_list = '".$listsp_[$i]['id']."' and type='product' and hienthi=1 and noibat = 1 order by stt,id desc");
                                          $banchay=$d->result_array();
                                    if(count($banchay) > 0){

                                for($k =0; $k < count($banchay); $k++){?>
                                  <li>
                                    <a href="san-pham/<?=$listsp_[$i]["tenkhongdau"]?>/<?=$cat[$j]['tenkhongdau']?>/<?=$banchay[$k]['tenkhongdau']?>" title='<?=$banchay[$k]['ten_vi']?>'>
                                        <?=$banchay[$k]['ten_vi']?>
                                    </a>
                                  </li>
                                <?php } } ?>
                              </ul>
                            </li>
                            <li class="pc_menu">
                              <span>Danh mục</span>
                              <ul>
                                <?php 

                                   
                                    if(count($cat) > 0){
                                  
                                for($j =0; $j < count($cat); $j++){?>
                                  <li>
                                    <a href="san-pham/<?=$listsp_[$i]['tenkhongdau']?>/<?=$cat[$j]['tenkhongdau']?>" title='<?=$cat[$j]['ten_vi']?>'>
                                        <?=$cat[$j]['ten_vi']?>
                                    </a>
                      
                                  </li>
                                <?php } }?>
                              </ul>
                            </li>
                            <li class="pc_menu">
                              <span>Thương hiệu</span>
                              <ul>
                                <?php
                                    $d->query("select DISTINCT  id_thuonghieu from #_product where id_list = '".$listsp_[$i]['id']."' and type='product' and hienthi=1 order by stt,id desc");
                                          $thuonghieu=$d->result_array();
                                    if(count($thuonghieu) > 0){


                                  
                                  for($t =0; $t < count($thuonghieu); $t++){

                                     $d->query("select ten_vi, tenkhongdau from #_baiviet where id = '".$thuonghieu[$t]['id_thuonghieu']."' and type='thuonghieu'");
                                           $thuonghieu_ten=$d->fetch_array();
                                  ?>
                                  <li>
                                    <a href="thuong-hieu/<?=$thuonghieu_ten['tenkhongdau']?>" title='<?=$thuonghieu['thuonghieu_ten']?>'>
                                        <?=$thuonghieu_ten['ten_vi']?>
                                    </a>
                                  </li>
                                <?php } } ?>
                              </ul>
                            </li>
                         </ul>
                         <!-- đóng list_categories -->
            
                    </li>
                  <?php }?>
                  </ul>
                </div>
              </div>
            </div>
      </div>

