<script type="text/javascript">
	$(document).ready(function(e) {
		$(window).scroll(function(e) {
            var body = $("body");
			var top = body.scrollTop();
			if(top>0)
			{
				$('#backtop').css({ display:'block'});
			}
			else
			{
				$('#backtop').css({ display:'none'});
			}
        });
		
        $('#backtop').click(function(e) {
            $('html,body').animate({
				scrollTop: $('body').offset().top},'slow'
			);
        });
    });

</script>
<div id="backtop" style="display:none; position:fixed; bottom:10px; cursor:pointer; right:20px;z-index:999999;">
	<img src="images/top.png" alt="Back To Top" style="transition:opacity .4s ease;-o-transition:opacity .4s ease;-moz-transition:opacity .4s ease;-webkit-transition:opacity .4s ease;-ms-transition:opacity .4s ease;">
</div>