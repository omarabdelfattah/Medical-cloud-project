<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: X-Requested-With');
header('Content-Type: application/json');

require '../config.php';
require '../functions.php'; 


$request_method = $_SERVER['REQUEST_METHOD']; 

$data = json_decode(file_get_contents("php://input"));




if($request_method == "GET" ){

    if(isset($data->name)  ){
    try {

        if(isset($data->token)){
            if(check_token($conn_accounts,$data->token) == false){
                $data = [
                    "status" => "error",
                    "msg"    => "Token is invalid or expired"
                ];
                echo json_encode($data);
                return;
            }
        }else{
            $data = [
                "status" => "error",
                "msg"    => "Token is required"
            ];
            echo json_encode($data);
            return;
        }


        $name=$data->name;
        $products = "SELECT * FROM `products` where `name` Like :name ";
        $products_stmt = $conn_inventory->prepare($products);
        $products_stmt->bindValue(':name','%'.$name.'%', PDO::PARAM_STR);
        $products_stmt->execute();
        

        if ($products_stmt->rowCount()){

            $user_data = $products_stmt->fetch();
            $user_data = [
                'name'      => $user_data['name'],
                'price'  => $user_data['price'],
                'desc'     => $user_data['description'],
                'img'     => isset($_SERVER['HTTPS']) ? 'https://' : 'http://' .  $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']."uploads/".$user_data['img'],
                'count'   => $user_data['count'],
            ];

            $data = [
                "status"    => "success",
                "msg"       => 'data is  received',
                "user_info" => $user_data
            ];

        }else{
            $data = [
                "status" => "error",
                "msg"    => 'no data found'
            ];
        }
    } catch (PDOException $e) {
        $data = $e->getMessage();
    }






    


    echo json_encode($data);

    }

}
