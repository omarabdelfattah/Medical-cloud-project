<?php 

function reg_token($conn,$user_id){ # this function will generate a token for the user
    
    $token = sha1(mt_rand(1, 90000)); # generate a random token
    
    #create a token for the user and store it in the database and return it and the user_id and the token
    $query = "INSERT INTO `accounts`.`auth`(`user_id`,`token_value`,`created_at`) VALUES(:user_id,:token,now())";

    $stmt = $conn->prepare($query);

    $stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);

    $stmt->bindValue(':token', $token, PDO::PARAM_STR);

    $stmt->execute();

    if ($stmt->rowCount()){
        return $token;
    }else{
        return false;
    }

}

function check_token($conn,$token){ 

    $query = "SELECT * FROM `accounts`.`auth` WHERE `token_value`=:token";

    $stmt = $conn->prepare($query);

    $stmt->bindValue(':token', $token, PDO::PARAM_STR);

    $stmt->execute();

    if ($stmt->rowCount()){

        $token_data = $stmt->fetch();
        
        if(strtotime($token_data['created_at']) < strtotime("-8 day")){ #
            # if the token is older than 8 days then delete it and return false
                $query = "DELETE FROM `accounts`.`auth` WHERE `token_value`=:token";

                $stmt = $conn->prepare($query);

                $stmt->bindValue(':token', $token, PDO::PARAM_STR);

                $stmt->execute();

                return false;
        }
    
        return $token_data['user_id'];

    }else{
        return false;
    }
}

function get_category($conn,$cat_id){ 

    # get the category name from the category id
    $query = "SELECT * FROM `product_categories` WHERE `id`=:cat_id";
    # prepare the query
    $stmt = $conn->prepare($query);
    # bind the value
    $stmt->bindValue(':cat_id', $cat_id, PDO::PARAM_INT);
    # execute the query
    $stmt->execute();

    if ($stmt->rowCount()){
        # get the data
        $cat_data = $stmt->fetch();
        # return the data
        return $cat_data['id'];
    }else{
        return false;
    }
}


?>