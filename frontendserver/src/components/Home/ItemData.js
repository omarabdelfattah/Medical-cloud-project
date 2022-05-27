import React from 'react'
import Dermatop from '../../assets/Home/dermatop.png'
import Paramol from '../../assets/Home/paramol-sol-tabs.png'
import Metformin from '../../assets/Home/Metformin.png'
import Home from '../../pages/Home';

const data=[
    {
        id:5,
       image:Paramol,
       Name:"Paramol"
    },
    {
        id:6,
        image:Metformin,
        Name:"Metformin"
     },
    {
        id:7,
        image:Dermatop,
        Name:"Dermatop",
    },
];
export default function ItemData() {
    return(
        <div>
            <Home Items={data}/>
        </div>
    );
    
}
