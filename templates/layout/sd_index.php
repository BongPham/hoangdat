<script src="js/vegas/zepto.min.js"></script>
<link rel="stylesheet" href="js/vegas/vegas.min.css">
<script src="js/vegas/vegas.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	setTimeout(function(){
		$("#slide_show").vegas({
			delay: 7000,
		    timer: false,
		    shuffle: true,
		    transitionDuration: 3000,
		    animation: [ 'kenburnsUp' ],
		    slides: [
		    	<?php for($i=0;$i<count($result_slider);$i++){ ?>
		        	{ src: "<?=_upload_hinhanh_l?>1366x525x1/<?=$result_slider[$i]['photo_vi']?>" },
		    	<?php } ?>
		    ]
		});
	}, 1000);
	
})
</script>