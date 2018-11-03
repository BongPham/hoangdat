<?php 
	session_start();
    @define ( '_lib' , '../../libraries/');
    include_once _lib."config.php";
    include_once _lib."class.database.php";
    $d = new database($config['database']);
    include_once _lib."functions.php";
    include_once "function_dkdn.php";
    if (isset($_SESSION["lang"])){$lang  = $_SESSION["lang"];}else{$lang = "vi";}
    $lang_arr = get_lang_data($lang);
?>