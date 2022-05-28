import React from "react";
import email from "../assets/pass.png";
import pass from "../assets/email.jpg";
import logo from "../assets/Logo.png";
import { NavLink } from "react-router-dom";

import "../App.css";
// import "./Yarab.css";
import { Hidden } from "@material-ui/core";
function Login() {
  return (
    <div className="main">
      <div className="sub-main">
        <div className="test">
          <img src={logo} style={{ width: "30%" }} />
          <h1 style={{ color: "#ffffff" }}>Login</h1>
          <div>
            {/* <img src={pass} alt="pass" className="email" /> */}

            <input type="text" placeholder="Username" className="name" />
          </div>
          <div className="second-input">
            <input type="password" placeholder="Password" className="name" />
          </div>
          <div className="login-button">
            <button>
              {" "}
              <NavLink
                to="/home"
                style={{ textDecoration: "none", color: "white" }}
              >
                Login
              </NavLink>
            </button>
          </div>

          <p className="link">
            <a href="#">Forgot password?</a>
            <NavLink to="/">Register</NavLink>
          </p>
        </div>
      </div>
    </div>
  );
}
export default Login;
