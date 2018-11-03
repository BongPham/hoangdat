<script type="text/javascript" src="js/jssor/jssor.js"></script>
<script type="text/javascript" src="js/jssor/jssor.slider.js"></script>
<script type="text/javascript" src="js/colorbox/jquery.colorbox--min.js"></script>
<link rel="stylesheet" type="text/css" href="js/colorbox/jquery.colorbox-min.css" media="screen" />
<script type="text/javascript">
  $(document).ready(function() {
    $(".group1").colorbox({rel:'group1',fixed:'true', maxWidth:"90%", maxHeight:'90%'});
  });
</script>
<?php for($j=0;$j<count($album);$j++){ 
    $sql_ab = "select * from #_albumproduct_photo where id_album='".$album[$j]['id']."' and type='".$type_bar."' order by stt,ngaytao desc";
    $d->query($sql_ab);
    $album_photo = $d->result_array();

    //echo $sql_ab;exit();

?>
<script>
    jssor_slider<?=$j?>_starter = function (containerId) {

        var _SlideshowTransitions = [
            //Fade Twins
            { $Duration: 700, $Opacity: 2, $Brother: { $Duration: 1000, $Opacity: 2 } },
        ];


        var options = {
            $FillMode: 1,
            $DragOrientation: 3,
            $AutoPlay: true,
            $AutoPlayInterval: 2500,
            $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: _SlideshowTransitions,
                $TransitionsOrder: 1,
                $ShowLink: true
            },

            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $ChanceToShow: 2,
                $AutoCenter: 1,
                $Steps: 1,
                $Lanes: 1,
                $SpacingX: 10,
                $SpacingY: 10,
                $Orientation: 1
            }
        };

        var jssor_slider<?=$j?> = new $JssorSlider$(containerId, options);

        //responsive code begin
        //you can remove responsive code if you don't want the slider scales while window resizes
        function ScaleSlider() {
            var parentWidth = jssor_slider<?=$j?>.$Elmt.parentNode.clientWidth;
            if (parentWidth)
                jssor_slider<?=$j?>.$ScaleWidth(Math.min(parentWidth, 800));
            else
                $Jssor$.$Delay(ScaleSlider, 30);
        }

        ScaleSlider();
        $Jssor$.$AddEvent(window, "load", ScaleSlider);

        $Jssor$.$AddEvent(window, "resize", $Jssor$.$WindowResizeFilter(window, ScaleSlider));
        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
        //responsive code end
    };
</script>
<!-- Jssor Slider Begin -->
<div class="title_slide"><h3><?=$album[$j]['ten_'.$lang]?></h3></div>
<div class="clear" style="height:30px;"></div>
<!-- To move inline styles to css file/block, please specify a class name for each element. --> 
<div id="slider<?=$j?>_container" style="position: relative; width: 900px; height: 400px; background-color: #000; overflow: hidden;margin:0px auto; ">

    <!-- Slides Container -->
    <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 900px; height: 400px;overflow: hidden;">
    	<?php for($i=0;$i<count($album_photo);$i++){ ?>
	        <div>
	            <a class="group1 cboxElement" u=image href="<?=_upload_baiviet_l.$album_photo[$i]['photo']?>" title="<?=$album[$j]['ten_'.$lang]?>"><img src="<?=_upload_baiviet_l?>900x400x1/<?=$album_photo[$i]['photo']?>" alt="<?=$row_detail['ten_'.$lang]?>" /></a>
	        </div>
        <?php } ?>
    </div>
    
    <!--#region Bullet Navigator Skin Begin -->
    <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
    <style>
        .jssorb13 {
            position: absolute;
        }
        .jssorb13 div, .jssorb13 div:hover, .jssorb13 .av {
            position: absolute;
            /* size of bullet elment */
            width: 21px;
            height: 21px;
            background: url(images/b13.png) no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb13 div { background-position: -5px -5px; }
        .jssorb13 div:hover, .jssorb13 .av:hover { background-position: -35px -5px; }
        .jssorb13 .av { background-position: -65px -5px; }
        .jssorb13 .dn, .jssorb13 .dn:hover { background-position: -95px -5px; }
    </style>
    <!-- bullet navigator container -->
    <div u="navigator" class="jssorb13" style="bottom: 16px; right: 6px;">
        <!-- bullet navigator item prototype -->
        <div u="prototype"></div>
    </div>
    <!--#endregion Bullet Navigator Skin End -->
    <!-- Trigger -->
    <script>
        jssor_slider<?=$j?>_starter('slider<?=$j?>_container');
    </script>

</div>
<div class="clear" style="height:40px;"></div>
<?php } ?>