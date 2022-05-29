import React from "react";
import { data_list } from "../components/Home/ItemData";
import { Link, useParams } from "react-router-dom";

import "../styles/Productinfo.css";

import PageNav from "../components/PageNav";

function Productinfo() {
  console.log(data_list);
  let { id } = useParams();
  let product = data_list.filter((drug) => drug.id == id);
  return (
    <div className="container mt-3">
      <PageNav />

      <div className="row">
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
      </div>
    </div>
  );
}

export default Productinfo;
