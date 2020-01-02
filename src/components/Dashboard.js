import React from "react";
import Card from "./Card";
import AddCardForm from "./AddCardForm";

class Dashboard extends React.Component{

    state = {
        selectedDashboard: null
    }

    dashboard = () => {
        const {dashboard} = this.props
        return dashboard.cards.map(card => {
            return(
                <Card 
                    card_id={card.id} 
                    card={card} 
                    removeCard={this.props.removeCard} 
                    editCard={this.props.editCard} 
                />
            );
        })
    }

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
                                addCard={this.props.addCard} 
                                dashboard_id={dashboard.id} 
                            />
                        </div>
                    : null
                }
            </div>
        );
    }

}

export default Dashboard;