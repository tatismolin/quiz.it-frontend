import React, {Component} from "react";
import Card from "./Card";

class SearchedCards extends Component{

    foundCards = () => {
        const {filteredCards, searchTerm} = this.props;
        if(searchTerm.length > 1){
            return filteredCards.map(card => {
                return(
                    <Card card={card} />
                );
            });    
        }
    };

    render() {
        return(
            <div className="found-cards">
                {this.foundCards()}
            </div>
        );
    };

}

export default SearchedCards;
