import React, {Component} from "react";
import Flippy, {FrontSide, BackSide} from "react-flippy";
// import EditCardForm from "./EditCardForm";

class Card extends Component{

    handleDelete = (event) => {
        const {removeCard, card_id} = this.props;
        removeCard({card_id: card_id});
    };

    // handleEdit = (event) => {
    //     const {editCard, card_id} = this.props;
    //     editCard({card_id: card_id});
    // };
    
    render(){
        const {name, content} = this.props.card;
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

                        <p>{name}</p>
                </FrontSide>

                <BackSide
                    className="card-back"
                    style={{
                        backgroundColor: "white",
                        color: "#494947",
                        boxShadow: "0 4px 8px 0 rgba(0,0,0,.2)"
                    }}>
                        <div className="card-buttons">
                            <span 
                                className="delete-card" 
                                onClick={() => { if (window.confirm('Are you sure you wish to delete this card?')) this.handleDelete() }}
                                role="img" 
                                aria-label="delete button">

                                    ❌
                            </span>

                            {/* <span 
                                className="edit-emoji" 
                                // onClick={this.handleEdit}
                                role="img" 
                                aria-label="edit button">

                                    ✏️
                            </span> */}
                        </div>
                        <div className="back-content" style={{overflow: "scroll"}}>
                            <p>{content}</p>
                        </div>
                </BackSide>

                {/* <EditCardForm 
                    editCard={this.props.editCard} 
                    dashboard_id={this.props.dashboard.id} 
                />  */}
            </Flippy>
        );
    };

}

export default Card;
