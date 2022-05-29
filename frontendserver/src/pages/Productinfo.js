import React, {useContext ,useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { useCookies, Cookies } from 'react-cookie';

import "../styles/Productinfo.css";

import PageNav from "../components/PageNav";
import axios from "../api/axios";
const PRODUCT_INFO_URL = "/inventory/detailproduct.php";

function Productinfo() {

  const [cookies] = useCookies(['token']);
const token =  cookies.token;
const [product_info, setproductInfo] = useState("");
const [errMsg, setErrMsg] = useState("");

// console.log("hey "+name+ " your token is "+ token );
useEffect(async  () =>  {

  try {
    const response = await axios.post(PRODUCT_INFO_URL,
      JSON.stringify({token:token}),
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
      console.log(product_info);
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

  let { id } = useParams();

  
  return (
    <div className="container mt-3">
      <PageNav />

      {/* <div className="row">
        <div className="col-8">
          <h1 style={{ textDecoration: "underline #639DC3 10px" }}>
            {product[0].title}
          </h1>
          <h3 className="mt-4">Composition :</h3>
          <p>
            <big>{product[0].composition}</big>
          </p>
          <h3>Indcation And Usage :</h3>
          <ul>
            <li>
              <p>
                <big>{product[0].usage1}</big>
              </p>
            </li>
            <li>
              <p>
                <big>{product[0].usage2}</big>
              </p>
            </li>
            <li>
              <p>
                <big>{product[0].usage3}</big>
              </p>
            </li>
          </ul>
        </div>
        <div className="col-4">
          <img src={product[0].image} className="drug" style={{ width: "90%" }} />
        </div>
      </div>
      <div className="row">
        <h3>Adverse Effects:</h3>
        <p>
          <big>{product[0].Adverse_Effects}</big>
        </p>
        <h3>Dosage And Administration :</h3>
        <p>
          <big>{product[0].Dosage_Administration}</big>
        </p>
        <a href={"/Order/" + id} className="m-3" style={{ float: "right" }}>
          <button
            className="btn btn-lg btn-primary"
            style={{ backgroundColor: "#0E3E9E" }}
          >
            Order Now
          </button>
        </a>
      </div> */}
    </div>
  );
}

export default Productinfo;
