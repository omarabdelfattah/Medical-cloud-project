import React from 'react'
import {DUMMY_DATA} from './Categories'
import { Link, useParams } from 'react-router-dom';
import '../styles/Productinfo.css'



function Productinfo() {
let { id } = useParams();
let product= DUMMY_DATA.filter(drug => drug.id == id);
    return (
        <div className="container mt-3">
            <div className='row'>
                <div className='col-8'>
                    <h1 style={{textDecoration:"underline #639DC3 10px"}}>{product[0].title}</h1>
                    <h3 className='mt-4'>Composition :</h3>
                    <p><big>{product[0].composition}</big></p>
                    <h3>Indcation And Usage :</h3>
                    <ul>
                        <li><p><big>{product[0].usage1}</big></p></li>
                        <li><p><big>{product[0].usage2}</big></p></li>
                        <li><p><big>{product[0].usage3}</big></p></li>
                    </ul>
                </div>
                <div class="col-4">
                    <img src={product[0].image} class="drug" style={{width:"90%"}}/>
                </div>
            </div>
            <div class="row">
                
                    <h3>Adverse Effects:</h3>
                    <p><big>{product[0].Adverse_Effects}</big></p>
                    <h3>Dosage And Administration :</h3>
                    <p><big>{product[0].Dosage_Administration}</big></p>
                    <a href={"/Order/"+id} className='m-3' style={{float:"right"}}><button className='btn btn-lg btn-primary' style={{ backgroundColor:"#0E3E9E"}}>Order Now</button></a>
            </div>
        </div>

    )
}

export default Productinfo
