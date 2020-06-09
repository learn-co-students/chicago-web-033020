import React, { Fragment } from 'react'

const Sushi = (props) => {
  console.log(props)
  return (
    <div className="sushi">
      <div className="plate" 
           onClick={() => props.handleEaten(props.sushi.id, props.sushi.price)}>
        { 
          props.sushi.isEaten ?
            null
          :
            <img src={props.sushi.img_url} width="100%" />
        }
      </div>
      <h4 className="sushi-details">
        {props.sushi.name} - ${props.sushi.price}
      </h4>
    </div>
  )
}

export default Sushi
