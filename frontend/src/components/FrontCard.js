import React from "react";

class FrontCard extends React.Component{

    render(){
        return(
            <div className="card-side side-front">
                <h1 className="card-content">{this.props.card.name}</h1>
            </div>

        );
    }

}

export default FrontCard;
