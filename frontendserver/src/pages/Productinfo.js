import React, {useContext ,useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { useCookies, Cookies } from 'react-cookie';

import "../styles/Productinfo.css";

import PageNav from "../components/PageNav";
import axios from "../api/axios";
const PRODUCT_INFO_URL = "/inventory/detailproduct.php";

function Productinfo() {
  let { id } = useParams();

  const [cookies] = useCookies(['token']);
const token =  cookies.token;
const [product_info, setproductInfo] = useState("");
const [errMsg, setErrMsg] = useState("");

// console.log("hey "+name+ " your token is "+ token );

useEffect(async  () =>  {

  try {
    const response = await axios.post(PRODUCT_INFO_URL,
      JSON.stringify({
            token:token, 
            id:id
          }),
      {
        headers: { 
          'Content-Type': 'application/json',
        },
      }
    );

    const status = response?.data?.status;
    const msg = response?.data?.msg;
    const product_info = response?.data?.product_info;
    // get product list from server

    if (status == 'success') {

      setproductInfo(product_info);

    }else{
      if(response?.data?.response?.msg){
        setErrMsg(response?.data?.response?.msg);
      }else{
        setErrMsg("error with get product");
      }
    }


  } catch (err) {

    if(!err.response){
      setErrMsg("product list fetch error or server error");
    } else {
      setErrMsg("error with get product");
    }

  }

}, []);


  
  return (
    <div>
    <PageNav />
    <div className="container mt-3">
      <div className="row">
        <div className="col-8">
          <h1 style={{ textDecoration: "underline #639DC3 10px" }}>
            {product_info.name}
          </h1>
          <br />
          <h3>Price:</h3>
        <p>
          <big>{product_info.price} EGP</big>
        </p>
        <h3>Customer rating :</h3>
        <p>
          <big>{product_info.rating} / 5</big>
        </p>
          <h3 className="mt-4">Description :</h3>
          <p>
            <big>{product_info.desc}</big>
          </p>       
        </div>
        <div className="col-4">
          <img src={product_info.img} className="drug" style={{ width: "90%" }} />
        </div>
      </div>
      <div className="row">
        <a href={"/Order/" + id} className="m-3" style={{ float: "right" }}>
          <button
            className="btn btn-lg btn-primary"
            style={{ backgroundColor: "#0E3E9E" }}
          >
            Order Now
          </button>
        </a>
      </div>
    </div>
    </div>
  );
}

export default Productinfo;
