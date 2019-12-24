import React from "react";

class BackCard extends React.Component{

    render(){
        return(
            <div className="card-side side-back">
                <p className="card-content">{this.props.card.content}</p>
            </div>
        );
    }

}

export default BackCard;
