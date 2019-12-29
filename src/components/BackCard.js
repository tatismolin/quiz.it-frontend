import React from "react";

function BackCard({card}){

    return(
        <div className="card card-back">
            <p className="card-content">{card.content}</p>
        </div>
    );

}

export default BackCard;
