import React from 'react'
import DrugsItem from './DrugsItem'
import classes from './DrugsList.module.css'
function DrugsList(props) {
    return (
        <div>
           
           <ul className={classes.list}>
            {props.drugs.map((drug) => (
                <DrugsItem
                id={drug.id}
                image={drug.image}
                title={drug.title}
                price={drug.price}
                categories={drug.categories}
                company={drug.company}
                />
            ))}

           </ul>

        </div>
    )
}

export default DrugsList
