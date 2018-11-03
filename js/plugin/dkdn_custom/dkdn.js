$(function() {
	$(".captcha").click(function() {$(this).attr("src","plugin/dkdn_custom/captcha.php");});
	$(".dkdn_box label.error").click(function(event) {$(this).fadeOut();});
});