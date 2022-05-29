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

        $products = "SELECT * FROM `products` ";
        $products_stmt = $conn_inventory->prepare($products);
        $products_stmt->execute();

        if ($products_stmt->rowCount()){

            $product_data = $products_stmt->fetchAll();
            $product_list = [];
            foreach($product_data as  $product){

                $product = [
                    'name'      => $product['name'],
                    'price'  => $product['price'],
                    'desc'     => $product['description'],
                    'img'     => isset($_SERVER['HTTPS']) ? 'https://' : 'http://' .  $_SERVER['HTTP_HOST'] ."/uploads/".$product['img'],
                    'count'   =>    get_category($conn_inventory,$product['cat_id']),
                    'category'   => $product['count'],
                ];

                array_push($product_list,$product);
            }


            $data = [
                "status"    => "success",
                "msg"       => 'data is  received',
                "product_list" => $product_list
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






    


    echo json_encode($data);



}
