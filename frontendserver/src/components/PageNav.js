import React from 'react';
import  Navbar  from 'react-bootstrap/Navbar';
import logo from '../assets/Medical Rep Logo.png';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import {Link} from 'react-router-dom'; 
import "../styles/Nav.css";
import  NavDropdown  from 'react-bootstrap/NavDropdown';
import { NavLink } from "react-router-dom";
function PageNav() {
    return (
            <Navbar className='Nav'>
              <div className="container pt-4">
                     <Row>
                        <Col>
                          <NavLink to="/"><img src={logo}  width="80rem"></img></NavLink>
                        </Col>
                        <Col style={{marginTop:"1%"}}>
                          <NavLink activeClassName="active" className='links' style={{textDecoration:"none"}} to="/">Home</NavLink>
                        </Col> 
                        <Col>
                          <NavDropdown
                            id="nav-dropdown-example"
                            title="Categories"
                            menuVariant="light"
                            style={{width:"300%", marginLeft:"50px"}}>
                              <div className='row'>
                                <div className='col-6'>
                                  <NavDropdown.Item  className='dropItem'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Cardiovascular system</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Eye & Nose</Link></NavDropdown.Item>
                                  <NavDropdown.Item className='dropItem'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Endocrine system</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem2'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Infections</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Gastrointestinal tract</Link></NavDropdown.Item>
                                </div>
                                <div className='col-6'>
                                  <NavDropdown.Item  className='dropItem4'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>CNS</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem5'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Respiratory system</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem6'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Analgesics</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Gynecologic</Link></NavDropdown.Item>
                                  <NavDropdown.Item  className='dropItem8'><Link to="/Categories" style={{textDecoration:"none",color:"black"}}>Urinary tract</Link></NavDropdown.Item>
                                </div>
                              </div>
          </NavDropdown>
</Col>
            <Col style={{marginTop:"1%"}}>
              <NavLink activeClassName="active" to="/About"  className='links' style={{textDecoration:"none"}}>About</NavLink></Col>
            <Col style={{marginTop:"1%",marginLeft:"20px"}}><NavLink activeClassName="active" to="/Contact" className='links' style={{textDecoration:"none"}}>Contact</NavLink></Col>
                </Row>
                </div>
                
            </Navbar>
            
       
    )
}

export default PageNav
