import React, {useContext ,useState, useEffect } from "react";
import Navbar from "react-bootstrap/Navbar";
import logo from "../assets/Medical Rep Logo.png";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import { Link } from "react-router-dom";
import "../styles/Nav.css";
import NavDropdown from "react-bootstrap/NavDropdown";
import { NavLink  } from "react-router-dom";
import { useCookies, Cookies } from 'react-cookie';
import axios from "../api/axios";
const CATEGORIES_URL = "/inventory/categories.php";

function PageNav() {


  const [cookies] = useCookies(['token', 'name', 'username', 'email', 'phone', 'address']);
  const token =  cookies.token;
  const name =  cookies.name;
  const username =  cookies.username;
  const email =  cookies.email;
  const phone =  cookies.phone;
  const address =  cookies.address;

  const [errMsg, setErrMsg] = useState("");
  const [success, setSuccess] = useState(false);



  // console.log("hey "+name+ " your token is "+ token );
  useEffect(async  () =>  {
    console.log(token);
    try {
      const response = await axios.get(CATEGORIES_URL,
        {
          data: {
            token: token,
          },
          headers: { 
            'Content-Type': 'application/json',
          },
        }
      );
  
      const status = response?.data?.status;
      const msg = response?.data?.msg;
      const categories_list = response?.data?.categories_list;
      // get categories list from server
      console.log(response?.data);
      console.log(status);
  
      if (status == 'success') {
  
      }else{
        if(response?.data?.response?.msg){
          setErrMsg(response?.data?.response?.msg);
        }else{
          setErrMsg("error with get categories");
        }
      }
  
  
    } catch (err) {
  
      
      if(!err.response){
        setErrMsg("categories list fetch error or server error");
      } else {
        setErrMsg("error with get categories");
      }
  
      console.log(err);
  
  
    }
  
  }, []);

  return (
    <Navbar className="Nav">
      <div className="container pt-4">
        <Row>
          <Col>
            <NavLink to="/home">
              <img src={logo} width="80rem"></img>
            </NavLink>
          </Col>
          <Col style={{ marginTop: "1%" }}>
            <NavLink
              className="active links"
              style={{ textDecoration: "none" }}
              to="/home"
            >
              Home
            </NavLink>
          </Col>
          <Col>
            <NavDropdown
              id="nav-dropdown-example"
              title="Categories"
              menuVariant="light"
              style={{ width: "300%", marginLeft: "50px" }}
            >
              <div className="row">
                <div className="col-6">
                  <NavDropdown.Item className="dropItem">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Cardiovascular system
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Eye & Nose
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Endocrine system
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem2">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Infections
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Gastrointestinal tract
                    </Link>
                  </NavDropdown.Item>
                </div>
                <div className="col-6">
                  <NavDropdown.Item className="dropItem4">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      CNS
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem5">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Respiratory system
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem6">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Analgesics
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Gynecologic
                    </Link>
                  </NavDropdown.Item>
                  <NavDropdown.Item className="dropItem8">
                    <Link
                      to="/Categories"
                      style={{ textDecoration: "none", color: "black" }}
                    >
                      Urinary tract
                    </Link>
                  </NavDropdown.Item>
                </div>
              </div>
            </NavDropdown>
          </Col>
          <Col style={{ marginTop: "1%" }}>
            <NavLink
              to="/About"
              className="active links"
              style={{ textDecoration: "none" }}
            >
              About
            </NavLink>
          </Col>
          <Col style={{ marginTop: "1%", marginLeft: "20px" }}>
            <NavLink
              to="/Contact"
              className="active links"
              style={{ textDecoration: "none" }}
            >
              Contact
            </NavLink>
          </Col>
          <Col style={{ marginTop: "1%", marginLeft: "20px" }}>
            <NavLink
              to="/Contact"
              className="active links"
              style={{ textDecoration: "none" }}
            >
            </NavLink>
          </Col>
        </Row>
      </div>
    </Navbar>
  );
}

export default PageNav;
