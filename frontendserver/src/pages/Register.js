import React, { useState } from "react";
import pass from "../assets/pass.png";
import email from "../assets/email.jpg";
import logo from "../assets/Logo.png";
import conpass from "../assets/conpass.png";
import profile from "../assets/profile.png";
import location from "../assets/location.png";
import register from "../App.css";
import { NavLink } from "react-router-dom";

function Register() {
  // const [values, setValues] = useState({
  //     fullname: "",
  //     email: "",
  //     password: "",
  //     confirm: "",

  // });
  // const handlechanage=(event)=>
  // {setValues({
  //     values,[event.target.name]:event.target.value,
  // })}
  // const [errors, setErrors] = useState({});
  // const handleformsubmit = (event) => {
  //     setErrors(Validation(values));
  // }

  return (
    <div className="main">
      <div className="sub-main">
        <form>
          <div className="test" style={{ height: "710px", marginTop: "-50px" }}>
            <img src={logo} style={{ width: "30%" }} />
            <h1 style={{ color: "#ffffff" }}>Register</h1>
            <div>
              <img src={email} alt="pass" className="inputs" />

              <input
                type="email"
                placeholder="Email address"
                className="name"
                name="email"
                //  value={values.email}
                //  onChange={handlechanage}
              />

              {/* {errors.email && <p className='error'>{errors.email}</p>} */}
            </div>
            <div className="second-input">
              <img src={profile} alt="email" className="inputs" />
              <input
                type="text"
                placeholder="User Name"
                className="name"
                name="fullname"
                // value={values.fullname}
                // onChange={handlechanage}
              />
              {/* {errors.fullname && <p className='error'>{errors.fullname}</p>} */}
            </div>
            <div className="second-input">
              <img src={pass} alt="email" className="inputs" />
              <input
                type="password"
                placeholder="Password"
                className="name"
                name="password"
                //  value={values.password}
                //  onChange={handlechanage}
              />
              {/* {errors.password && <p className='error'>{errors.password}</p>} */}
            </div>
            <div className="second-input">
              <img src={conpass} className="inputs" />
              <input
                type="password"
                placeholder="Confirm password"
                className="name"
                name="confirm"
                //  value={values.confirm}
                //  onChange={handlechanage}
              />
              {/* {errors.confirm && <p className='error'>{errors.confirm}</p>} */}
            </div>
            <div className="second-input">
              <img src={email} className="inputs" />
              <input
                type="numbers"
                placeholder="Telephone number"
                className="name"
              />
            </div>
            <div className="second-input">
              <img src={location} alt="email" className="inputs" />
              <input type="longtext" placeholder="Location" className="name" />
            </div>
            <div className="login-button">
              <button>
                {" "}
                <NavLink
                  to="/login"
                  style={{ textDecoration: "none", color: "white" }}
                >
                  Register
                </NavLink>
              </button>
            </div>

            <p className="link">
              <a href="#">already have an acount?</a>
              <NavLink to="/login">Login</NavLink>
            </p>
          </div>
        </form>
      </div>
    </div>
  );
}
export default Register;
