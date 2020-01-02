import React, {Component} from "react";
import Card from "./Card";
import AddCardForm from "./AddCardForm";
import Search from "./Search";

class Dashboard extends Component{

    state = {
        selectedDashboard: null,
        cards: []
    };

    componentDidMount(){
        this.setState({
            cards: this.props.dashboard.cards
        });
    };

    dashboard = () => {
        return this.state.cards.map(card => {
            return(
                <Card 
                    card_id={card.id} 
                    card={card} 
                    removeCard={this.removeCard} 
                    editCard={this.editCard} 
                />
            );
        });
    };

    addCard = (card) => {
        this.setState({
            cards: [...this.state.cards, card]
        });
        fetch("http://localhost:3000/cards", {
          method: "POST",
          headers: {
              "Content-Type": "application/json",
              "Accept": "application/json"
          },
          body: JSON.stringify({card})
        });
        // .then(response => response.json())
        // .then(card => {
        //     const index = this.state.cards.length-1
        //     const newArray = this.state.cards.slice(index)
        //     this.setState({
        //         cards: [...newArray, card]
        //     })
        // })
    };

    removeCard = (deletedCard) => {
        const newCardsState = this.state.cards.filter(card => {
            return(
                card.id !== deletedCard.card_id
            );
        });
        this.setState({cards: newCardsState});
        fetch(`http://localhost:3000/cards/${deletedCard.card_id}`, {
          method: "DELETE"
        });
    };

    // editCard = (updatedCard) => {
    //     const newCardsState = this.state.cards.map(card => {
    //         return card.id === updatedCard.card_id
    //             ? updatedCard
    //             : card
    //     })
    //     this.setState({cards: newCardsState});
    //     fetch(`http://[::1]:3000/cards/${card.id}`, {
    //         method: "PATCH",
    //         headers: {
    //             "Content-Type": "application/json",
    //             "Accept": "application/json"
    //         },
    //         body: JSON.stringify({
    //             name: "name",
    //             content: "content"
    //         })
    //     });
    // }

    render(){
        const {selectedDashboard} = this.state;
        const {dashboard} = this.props;
        return(
            <div className="dashboard-container">
                <p 
                    onClick={() => this.setState({selectedDashboard: !selectedDashboard})} 
                    className="dashboard-name">{dashboard.name}
                </p>

                {selectedDashboard
                    ? <div className="dashboard">
                            {this.dashboard()}
                            <AddCardForm 
                                addCard={this.addCard} 
                                dashboard_id={dashboard.id} 
                            />
                        </div>
                    : null
                }
            </div>
        );
    };

}

export default Dashboard;