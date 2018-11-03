<?php
	session_start();
	@define ( '_template' , './templates/');
	@define ( '_source' , './sources/');
	@define ( '_lib' , './libraries/');

	//$_SESSION['lang']='vi';
	
	if(!isset($_SESSION['lang']))
	{
		$_SESSION['lang']='vi';
	}
		$lang=$_SESSION['lang'];
	
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."functions_share.php";
	include_once _lib."class.database.php";
	include_once _source."lang_$lang.php";
	include_once _lib."functions_giohang.php";
	include_once _lib."file_requick.php";
	include_once _lib."counter.php"; 
	include_once _source."custom.php"; 
	
	if($_REQUEST['command']=='add' && $_REQUEST['productid']>0){
	$pid=$_REQUEST['productid'];
	$soluong=1;
	addtocart($pid,$soluong);
	redirect("gio-hang.html");}
	
	if($_GET['lang']!=''){
		$_SESSION['lang']=$_GET['lang'];
		header("location:".$_SESSION['links']);
	} else {
		$_SESSION['links']=getCurrentPageURL();
	}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<base href="http://<?=$config_url?>/">
<link id="favicon" rel="shortcut icon" href="<?=_upload_hinhanh_l.$favicon['thumb_'.$lang]?>" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title><?php if($title_bar!='') echo $title_bar; else echo $row_setting['title']; ?></title>
<meta name="description" content="<?php if($description_bar!='') echo $description_bar; else echo $row_setting['description']; ?>">
<meta name="keywords" content="<?php if($keywords_bar!='') echo $keywords_bar; else echo $row_setting['keywords']; ?>">

<meta name="robots" content="noodp,index,follow" />
<meta name="google" content="notranslate" />
<meta name='revisit-after' content='1 days' />
<meta name="ICBM" content="<?=$row_setting['toado']?>">
<meta name="geo.position" content="<?=$row_setting['toado']?>">
<meta name="geo.placename" content="<?=$row_setting['diachi_'.$lang]?>">
<meta name="author" content="<?=$row_setting['ten_'.$lang]?>">

<?=$share_facebook?>

<script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>	
<script type="text/javascript" language="javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<link href="js/bootstrap/css/bootstrap.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="js/slidedownmenu/slidedownmenu.css" />

<script type="text/javascript" src="js/slidedownmenu/script.js"></script>

<link rel="stylesheet" type="text/css" href="js/ddsmoothmenu-v.css" />
<link type="text/css" rel="stylesheet" href="menu/src/css/jquery.mmenu.all.css" />
<script type="text/javascript" src="menu/src/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript">
	$(function() {
		$('nav#menu').mmenu();
	});
</script>

<script type="text/javascript" src="js/plugins-scroll.js"></script>
<script type="text/javascript">
	function smoothScrolling() {
	  try {
	    $.browserSelector();
	    if ($("html").hasClass("chrome")) {
	      $.smoothScroll();
	    }
	  } catch (err) {
	  }
	}
	smoothScrolling();
	var window_w = $(window).width();
	if(window_w>992){
		$(window).scroll(function(event) {
			var scrollTop = $(document).scrollTop();
			if(scrollTop > 130){
				$('#main_menu').addClass('fixed_ad');
				
			}else{
				$('#main_menu').removeClass('fixed_ad');
				
			}

		});
	}
	
</script>


<script type="text/javascript" src="js/owl_carousel/owl.carousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/owl_carousel/assets/owl.carousel.css" />
<script type="text/javascript">
$(document).ready(function(e) {
  setTimeout(function(){
  	$('.owl-carousel_sp').owlCarousel({
	    loop:true,
	    margin:0,
	    responsiveClass:true,
	    nav:true,
	    autoplay:true,
        autoplayTimeout:2000,
        autoplayHoverPause:true,
	    responsive:{
	        0:{
	            items:1,
	            nav:true
	        },
	        600:{
	            items:2,
	            nav:true
	        },
	        768:{
	            items:3,
	            nav:true
	        },
	        992:{
	            items:3,
	            nav:true
	        },
	        1000:{
	            items:4,
	            nav:true,
	            loop:true
	        }
	    }
	  })
  }, 1000)

});
</script>

<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.lockfixed.min.js"></script>
<script>
	$(document).ready(function() {
		var left_h=$('.frm_spright').height();
		var main_h=$('.frm_spleft').height();
		var footer_h = $('#footer').height();
		if(main_h>left_h) 
		{
			$.lockfixed("#scroll-left",{offset: {top: 95, bottom: footer_h+100}});
		} 
			
	});
</script>
<?php /*<script type="text/javascript" src="js/colorbox/jquery.colorbox--min.js"></script>
<link rel="stylesheet" type="text/css" href="js/colorbox/jquery.colorbox-min.css" media="screen" />
<script type="text/javascript" src="js/fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="js/fancybox/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
*/ ?>

<style type="text/css">
	body{
		font-family: Arial;
		font-size:14px;
		line-height:1.5;
		
		background-color:<?=$row_background['mauneen']?>;
		background-attachment:normal;
		width:100%;
		height: 100%;
		float: left;
	}
</style>

<link rel="stylesheet" href="js/jquery-ui.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/colorpicker.js"></script>




<link href="css/animate.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />


</head>

<body <?php if($_GET['com']=='lien-he'){?>onload="initialize();<?php } ?>">
<?=$row_setting['analytics']?>
<div id="container" lang="vi">
	<?php include _template."layout/main_menu.php"; ?>
	

	<header id="header">
        <?php include _template."layout/header.php"; ?>
    </header>


    <div class="clear cls" style="height: 2px;"></div>
	<div id="main_menu"><?php include _template."layout/menu.php"; ?></div>

	<?php if($_GET['com']==''||$_GET['com']=='index'||$_GET['com']=='trang-chu'){ ?>
	
		
		<div id="slide_show" >
		    	<?php include _template."layout/slider.php";?>
			</div>
		<div class="clear cls"></div>
	
	<?php }else{ ?>
		<div class="clear" style="height:40px;"></div>
	<?php } ?>
    <main id="main">

    	
    	<div class="clear"></div>
    	<div class="container">
			<section id="content" >
				<div class="col-lg-12 col-md-12 col-sm-12 col-xx-12 col-xs-12 wow fadeInUp ">
					<?php include _template.$template."_tpl.php";?>
					<div class="clear"></div>
				</div>
			</section>
		</div>
    </main>

   	<footer id="footer">
		<?php include _template."layout/footer.php"; ?>
    </footer>
    
</div>
<?=$row_setting['vchat']?>

<?php //if($_GET['com']=='' || $_GET['com']=='index' || $_GET['com']=='trang-chu'){?>
<?php //include _template."layout/addon/popup.php"; ?>
<?php //} ?>

<?php include _template."layout/addon/backtotop.php"; ?>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57b28542615a7c2f"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAsXOCWea2qZsmNg4wlqW4yJVNeMQ7qyOk"></script>


</body>
</html>
