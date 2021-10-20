<?php

require_once(__DIR__.'/vendor/autoload.php');
use Monolog\Logger;

$logger = new Logger ('db');
$logger->info('Log Info');

$link = mysqli_connect('db', 'root', 'password');

if (!$link){
    $logger->warning('This is a log error');
    echo "Error: impossibile connettersi al db".PHP_EOL;
    echo "Debugging errno".mysqli_connect_errno().PHP_EOL;
    echo "Debugging error".mysqli_connect_error().PHP_EOL;
    exit;
}

$id = $_REQUEST['id'];
$product = $_REQUEST['product'];

if ($_SERVER["REQUEST_METHOD"] == "GET"){
    echo "Hai mandato una richiesta GET!!";
    echo $id.$product;
    exit;
}


else if ($_SERVER["REQUEST_METHOD"] == "POST"){
    echo "Hai mandato una richiesta POST!!";
    echo $id.$product;
}
    else if ($_SERVER["REQUEST_METHOD"=="PUT"]){
    echo "Hai mandato una richiesta PUT!!";
    echo $id.$product;
    exit;
}

else if ($_SERVER["REQUEST_METHOD"=="DELETE"]){
    echo "Hai mandato una richiesta DELETE";
    echo "Hai mandato una richiesta merge1";
    echo $id.$product;
    exit;
}
mysqli_close($link);
?>

