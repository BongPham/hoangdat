<script language="javascript" src="js/my_script.js"></script>
<script language="javascript">
function js_submit12(){
	if(isEmpty(document.getElementById('ten'), "Xin nhập Họ tên.")){
		document.getElementById('ten').focus();
		return false;
	}
	if(isEmpty(document.getElementById('diachi'), "Xin nhập Địa Chỉ.")){
		document.getElementById('diachi').focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('dienthoai'), "Xin nhập Số điện thoại.")){
		document.getElementById('dienthoai').focus();
		return false;
	}
	
	if(!isNumber(document.getElementById('dienthoai'), "Số điện thoại không hợp lệ.")){
		document.getElementById('dienthoai').focus();
		return false;
	}
	
	if(!check_email(document.frm.email.value)){
		alert("Email không hợp lệ");
		document.frm.email.focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('tieude'), "Xin nhập Chủ đề.")){
		document.getElementById('tieude').focus();
		return false;
	}
	
	if(isEmpty(document.getElementById('noidung'), "Xin nhập Nội dung.")){
		document.getElementById('noidung').focus();
		return false;
	}
	
	document.frm.submit();
}
</script>

<div class="thanh_index wow fadeInRight " data-wow-delay='0.7s'><h3>Liên hệ</h3></div><div class="clear" style="height:10px;"></div>
   <div class="khung_trai">

		<div class="form_contact col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12 wow fadeInRight " data-wow-delay='0.7s'>
			<p><?=$row_detail['noidung_'.$lang]?></p>
		</div>


    </div>
    <div class="clear" style="height:20px"></div>
	<div class="khung_phai wow fadeInUp " data-wow-delay='0.7s'>
      	
      	<script type="text/javascript">
		   var map;
		   var infowindow;
		   var marker= new Array();
		   var old_id= 0;
		   var infoWindowArray= new Array();
		   var infowindow_array= new Array();function initialize(){
			   var defaultLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
			   var myOptions= {
				   zoom: 16,
				   center: defaultLatLng,
				   scrollwheel : false,
				   mapTypeId: google.maps.MapTypeId.ROADMAP
				};
				map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);map.setCenter(defaultLatLng);
			    
			   var arrLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
			   infoWindowArray[7895] = '<div class="map_description"><div class="map_title"><h2><?=$row_setting["ten_".$lang]?></h2></div><b><?=_diachi?> :</b> <?=$row_setting["diachi_".$lang]?><br><b> <?=_dienthoai?> : </b><?=$row_setting["hotline"]?><br><b> Email : </b><?=$row_setting["email"]?></div>';
			   loadMarker(arrLatLng, infoWindowArray[7895], 7895);
			   
			   moveToMaker(7895);}function loadMarker(myLocation, myInfoWindow, id){marker[id] = new google.maps.Marker({position: myLocation, map: map, visible:true});
			   var popup = myInfoWindow;infowindow_array[id] = new google.maps.InfoWindow({ content: popup});google.maps.event.addListener(marker[id], 'mouseover', function() {if (id == old_id) return;if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;});google.maps.event.addListener(infowindow_array[id], 'closeclick', function() {old_id = 0;});}function moveToMaker(id){var location = marker[id].position;map.setCenter(location);if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;}</script>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12 wow fadeInLeft " data-wow-delay='0.7s' style="float:left;">
      				<div id="map_canvas"></div>
      		</div>
      		<div class="form_lh col-lg-6 col-md-6 col-sm-12 col-xs-12 col-xx-12 wow fadeInLeft " data-wow-delay='0.7s' style="float:right;">
			<form method="post" name="frm" action="lien-he.html" enctype="multipart/form-data">
			<fieldset>
				<p style="font-style:italic;color:#f00;">(*) - <?=_nhungmucphainhap?></p>
		        <p><label></label><input name="ten" type="text" class="tflienhe" id="ten" placeholder="<?=_hovaten?> (*)" /></p>
		        <p><label></label><input name="diachi" type="text"  class="tflienhe" id="diachi" placeholder="<?=_address?> (*)"/></p>
				<p><label></label> <input name="dienthoai" type="text" class="tflienhe" id="dienthoai" placeholder="<?=_dienthoai?> (*)"/></p>
				<p><label></label><input name="email" type="text" class="tflienhe" id="email" placeholder="Email (*)" /></p>
				<p><label></label><input name="tieude" type="text" class="tflienhe" id="tieude" placeholder="<?=_tieude?> (*)"/></p>
				<?php /*<p><label><?=_dinhkemfile?> : </label><input name="file" type="file" class="contact-file-input" /></p>*/ ?>
				<p><label></label>
				<textarea name="noidung" style="width:100%;height:100px;" class="ta_noidung" id="noidung" style="background-color:#FFFFFF; color:#666666;" placeholder="<?=_noidung?> (*)"></textarea>
				</p>
		        <p><label>&nbsp </label>
		            <button type="button" onclick="js_submit12();"><?=_gui?></button>
		            <button type="reset">Reset</button>   
		        </p> 
		        </fieldset>              
		    </form>
		</div>
    </div>

<div class="clear" style="height:20px;"></div>
<h1 class="visit_hidden fn vcard"><?=$row_setting['ten_'.$lang]?></h1>