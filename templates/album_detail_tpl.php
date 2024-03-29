<link rel="stylesheet" type="text/css" href="js/masory/css/default.css" />
<link rel="stylesheet" type="text/css" href="js/masory/css/component.css" />
<script src="js/masory/js/modernizr.custom.js"></script>
<link rel="stylesheet" href="js/photobox/photobox/photobox.css">
<script src='js/photobox/photobox/jquery.photobox.js'></script>
<script type="text/javascript">
$(document).ready(function($) {
    !(function(){
            // finally, initialize photobox on all retrieved images
            $('#grid').photobox('a', { thumbs:true, loop:false });
            // using setTimeout to make sure all images were in the DOM, before the history.load() function is looking them up to match the url hash
    })();
});
</script>

<div id="sanpham">
<div class="container">
<div class="content_khung">
  
    <div class="thanh_index"><h3><?=$title_detail?></h3></div><div class="clear" style="height:10px;"></div>

            <?php if(count($album_images)<=0) { ?><div class="updating">Không có hình ảnh nào để hiển thị.....</div><?php }else{ ?>
    		   <div id="gallery-wrap">
                    <ul class="grid effect-1" id="grid">
                        <?php for($i=0,$count_ab=count($album_images);$i<$count_ab;$i++){?>
                            <li class="loaded">
                                <div class="rel">
                                    <a rel="prettyPhoto[gallery<?=$i+1?>]" title="<?=$album_detail[0]['ten_'.$lang]?>" href="<?=_upload_album_l.$album_images[$i]['photo']?>">
                                        <img src="<?=_upload_album_l.$album_images[$i]['thumb']?>" alt="<?=$album_detail['ten_'.$lang]?>">
                                    </a>
                                </div>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            <?php } ?>
            <div class="addthis_native_toolbox"></div>
            </div>
        </div>
    </div>
<div class="clear" style="height:20px;"></div>

<script src="js/masory/js/masonry.pkgd.min.js"></script>
<script src="js/masory/js/imagesloaded.js"></script>
<script src="js/masory/js/classie.js"></script>
<script src="js/masory/js/AnimOnScroll.js"></script>
<script>
    new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.3,
        maxDuration : 0.7,
        viewportFactor : 0.2
    } );
</script>
        

