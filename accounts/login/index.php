<?php

// Include CORS headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: X-Requested-With');
header('Content-Type: application/json');


require '../config.php';
// require 'functions.php';

$request_method = $_SERVER['REQUEST_METHOD']; // Check Server request method

$data = json_decode(file_get_contents("php://input"));

 
if($request_method == "POST" ){
    
    if(isset($data->username) && isset($data->password)  ){
    
        try {
            $username = $data->username;
            $password = sha1($data->password);

            $check_email = "SELECT `name`,`username`,`email`,`phone`,`address` FROM `users` WHERE ( `email`=:username OR `username`=:username  ) AND  `password`=:password " ;
            $check_email_stmt = $conn->prepare($check_email);
            $check_email_stmt->bindValue(':username', $username, PDO::PARAM_STR);
            $check_email_stmt->bindValue(':password', $password, PDO::PARAM_STR);
            $check_email_stmt->execute();

            if ($check_email_stmt->rowCount()){
                $data = [
                    "status" => "success",
                    "msg"    => 'Logged in successfully'
                ];

            }else{
                $data = [
                    "status" => "error",
                    "msg"    => 'username or password is wrong'
                ];
            }
        } catch (PDOException $e) {
            $data = $e->getMessage();
        }
    }else{
        $data = [
            "status" => "error",
            "msg"    => "please enter all columns"
        ];
    }
    echo json_encode($data);
}
