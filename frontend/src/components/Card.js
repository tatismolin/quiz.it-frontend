import React from "react";
import FrontCard from "./FrontCard";
import BackCard from "./BackCard";

function Card({card}){

    return(
        <div className="card-container">
            <div className="card-body" >
                <FrontCard card={card} />
                <BackCard card={card} />
            </div>    
        </div>
    );

}

export default Card;
