import React, {Component} from "react";
import Flippy, { FrontSide, BackSide } from "react-flippy";

class Card extends Component{

    handleClick = (event) => {
        this.props.removeCard({card_id: this.props.card_id})
    }

    handleChange = (event) => {
        this.props.editCard({card_id: this.props.card_id})
    }

    render() {
        return(
            <Flippy
                flipOnHover={false} 
                flipOnClick={true} 
                flipDirection="horizontal" 
                ref={(r) => this.flippy = r} 
                style={{ 
                    display: "flex", 
                    justifySelf: "center",
                    width: "15rem", 
                    height: "15rem",
                    color: "white"
                }}>

                <FrontSide
                    className="card-front"
                    style={{
                        backgroundColor: "#475B5A", 
                        boxShadow: "0 4px 8px 0 rgba(0,0,0,.2)"
                    }}>
                    <div className="card-buttons">
                        <span className="delete-button" onClick={this.handleClick}role="img" aria-label="delete button">❌</span>
                        <span className="edit-button" onClick={this.handleChange}role="img" aria-label="edit button">✏️</span>
                    </div>
                    <p>{this.props.card.name}</p>
                </FrontSide>

                <BackSide
                    className="card-back"
                    style={{backgroundColor: "#494947"}}>

                    {this.props.card.content}
                </BackSide>
            </Flippy>
        );
    }

}

export default Card;
