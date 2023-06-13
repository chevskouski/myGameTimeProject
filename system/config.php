<?php
    
if($_SERVER['HTTP_HOST']=='localhost'){
    define('HOST', 'localhost');
    define('USER','root');
    define('PASSWORD','');
    define('DB_NAME','db_mygametime');
    define('BASE_URL','http://localhost/myGameTimeProject/');
}else{
    define('BASE_URL','server_url');
    define('HOST', 'localhost');
    define('USER','server_usr');
    define('PASSWORD','password');
    define('DB_NAME','dataBase_name');   
}
?>