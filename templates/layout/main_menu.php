<nav id='menu' class="mm-menu mm-horizontal mm-offcanvas">
    <ul>

        <li class="<?php if($_GET['com']==''||$_GET['com']=='index'||$_GET['com']=='trang-chu'){?>active<?php }?> wow fadeInLeft " data-wow-delay='0.2s'><a href="trang-chu.html" title="<?=_trangchu?>"><?=_trangchu?></a></li>

        <li class="<?php if($_GET['com']=='gioi-thieu'){?>active<?php }?> wow fadeInLeft " data-wow-delay='0.4s'><a href="gioi-thieu.html" title="Giới thiệu"><?=_gioithieu?></a>
             <ul>
                <li class=" wow fadeInLeft " data-wow-delay='0.4s'><a href="tong-quan.html" title="Tổng quan">Tổng quan</a></li>
                <li class=" wow fadeInLeft " data-wow-delay='0.4s'><a href="tam-nhin-dinh-huong.html" title="Tầm nhìn định hướng">Tầm nhìn định hướng</a></li>
            </ul>
        </li>

        <li class="<?php if($_GET['com']=='san-pham'){?>active<?php }?> wow fadeInLeft " data-wow-delay='0.8s'><a href="san-pham.html" title="Sản phẩm">Sản phẩm</a>
          <ul>
            <?php for($i=0;$i<count($rs_list);$i++){ ?>
              <li><a href="san-pham/<?=$rs_list[$i]['tenkhongdau']?>" title="<?=$rs_list[$i]['ten_'.$lang]?>"><?=$rs_list[$i]['ten_'.$lang]?></a>
                <?php
                    $d->reset();
                    $sql = "select id,ten_$lang,tenkhongdau from #_product_cat where hienthi=1 and type='product' and id_list = '".$rs_list[$i]['id']."' order by stt asc";
                    $d->query($sql);
                    $rs_product_cat = $d->result_array();
                ?>
                <ul>    
                    <?php for($j=0;$j<count($rs_product_cat);$j++){ ?>
                        <li>
                            <a href="san-pham/<?=$rs_list[$i]['tenkhongdau']?>/<?=$rs_product_cat[$j]['tenkhongdau']?>" title="<?=$rs_product_cat[$j]['ten_'.$lang]?>"><?=$rs_product_cat[$j]['ten_'.$lang]?></a>
                        </li>
                    <?php } ?>
                </ul>
              </li>
            <?php } ?>
          </ul>
        </li>

       

        <li class="<?php if($_GET['com']=='kien-thuc-tieu-dung'){?>active<?php }?> wow fadeInLeft " data-wow-delay='1.2s'><a href="kien-thuc-tieu-dung.html" title="Kiến thức tiêu dùng">Kiến thức tiêu dùng</a>
        </li>
        
        

        <li class="<?php if($_GET['com']=='lien-he'){?>active<?php }?> wow fadeInLeft " data-wow-delay='1.6s'><a href="lien-he.html" title="<?=_lienhe?>"><?=_lienhe?></a></li>
        
    </ul>
</nav>