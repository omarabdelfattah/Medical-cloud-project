import React from 'react'
import  Header from '../components/Home/Header'
import ItemDataFram from '../components/Home/ItemDataFrame'
export default function Home (props) {

          return (
            <div> 
                 <Header/>
                 
                <div className='container'>
                  <h1 className='text-start mt-3' style={{textDecoration:"underline #639DC3 10px"}}>New Rlease</h1>
                 <div className='row justify-content-between  pb-5'>
                      {
                        props.Items.map((Data)=>(
                        <ItemDataFram
                           image={Data.image} 
                           About={Data.About}
                           Name={Data.Name}
                           id={Data.id}
                        />
                     ))}
                 </div>
              </div>      
            </div>
          );
    }

