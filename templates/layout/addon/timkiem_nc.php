<?php
    $com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
    @$id=  addslashes($_GET['id']);
    $d->reset();
    $sql = "select id, ten_vi, tenkhongdau from #_baiviet where type='thuonghieu' and hienthi=1 order by id desc ";
    $d->query($sql);
    $thuonghieu = $d->result_array();

    $d->reset();
    $sql_gia="select id,ten,giatu, giaden from #_giasearch order by id";
    $d->query($sql_gia);
    $giasearch = $d->result_array();

?>

<script type="text/javascript">
  $(document).ready(function($) {
   

      $('#gia').change(function(event) {

        var id_gia = $(this).val(); 
        window.location.href='san-pham.html&mucgia='+id_gia;

      });
    
     $('#gia_th').change(function(event) {

        var id_gia = $(this).val(); 
        var idthuonghieu =  document.getElementById("thuonghieu");
        var strUser = idthuonghieu.options[idthuonghieu.selectedIndex].value;
        alert();
        if(strUser != ''){
           window.location.href='thuong-hieu/'+strUser+'.html&mucgia='+id_gia;
        }else{
           window.location.href='thuong-hieu.html&mucgia='+id_gia;
        }
       

      });

    $('#thuonghieu').change(function(event) {
      /* Act on the event */
      var id_thuonghieu = $(this).val(); 
      window.location.href='thuong-hieu/'+id_thuonghieu+'.html';
    });

    



  });
</script>

<form id="frmPrjSearch" name="frmPrjSearch" method="get" action="tim-kiem.html">
        
        <div id="divCategoryRe" class="comboboxs advance-select-box">
            <select name="thuonghieu" id="thuonghieu">
                <option value="">Chọn thương hiệu</option>
                <?php for($i=0;$i<count($thuonghieu);$i++){?>
                <option value="<?=$thuonghieu[$i]['tenkhongdau']?>"><?=$thuonghieu[$i]['ten_'.$lang]?></option>
                <?php } ?>
            </select>
        </div>
        <?php if($com == 'san-pham'){?>
          <div id="divPrice" class="comboboxs advance-select-box">
              <select id="gia" name="gia">
                  <option value="">Chọn mức giá</option>
                   <?php for($i=0;$i<count($giasearch);$i++){?>
                  <option value="<?=$giasearch[$i]['id']?>"><?=$giasearch[$i]['ten']?></option>
                  <?php } ?>

          </select>
          </div> <!-- #divPrice -->
        <?php }else{?>
          <div id="divPrice" class="comboboxs advance-select-box">
              <select id="gia_th" name="gia_th">
                  <option value="">Chọn mức giá</option>
                   <?php for($i=0;$i<count($giasearch);$i++){?>
                  <option value="<?=$giasearch[$i]['id']?>"><?=$giasearch[$i]['ten']?></option>
                  <?php } ?>

          </select>
          </div> <!-- #divPrice -->
        <?php } ?>
      
</form>
 

