<?php

// Include CORS headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: X-Requested-With');
header('Content-Type: application/json');


require 'config.php';
// require 'functions.php';

$request_method = $_SERVER['REQUEST_METHOD']; // Check Server request method

if($request_method == "POST"){
    echo json_encode("works as ".$request_method);
}elseif($request_method == "GET"){
    echo json_encode("works as ".$request_method);
}else{
   echo json_encode("works as ".$request_method);
}

