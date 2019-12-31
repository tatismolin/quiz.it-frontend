import React from "react";

function FrontCard({card}){

    return(
        <div className="card card-front">
            <h1 className="card-content">
                {card.name}</h1>
            <span role="img" aria-label="heart" className="heart">❤️</span>
        </div>

    );

}

export default FrontCard;
