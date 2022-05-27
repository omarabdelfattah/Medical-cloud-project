import React from 'react'

export default function ItemDataFrame(props) {
    return (
        <div className="card col-lg-4 mt-5" style={{width:"30%",border:'none',borderRadius:"15px",backgroundColor:"rgba(175, 44, 63,0.2)"}}>
          <a href={'Categories/drug/'+props.id} style={{textDecoration: 'none',}}>
          <img src={props.image} style={{width:"75%"}} className="card-img ml-4"  alt="Card image cap"/>
        <h5 className="card-title p-3" style={{backgroundColor:"white",textAlign:"center",borderRadius:"5px", color:"black"}}>{props.Name}</h5>
          </a>
      </div>
    )
}
