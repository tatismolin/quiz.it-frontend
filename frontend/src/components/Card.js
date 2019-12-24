import React from "react";
import FrontCard from "./FrontCard";
import BackCard from "./BackCard";

class Card extends React.Component{

    render(){
        return(
            <div className="card-container">
                <div className="card-body" >
                    <FrontCard card={this.props.card} />
                    <BackCard card={this.props.card} />
                </div>    
            </div>
        );
    }

}

export default Card;
