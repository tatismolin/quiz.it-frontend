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
                <Card key={card.id} card={card} />
            );
        })
    }

    render(){
        const {selectedDashboard} = this.state
        const {dashboard} = this.props
        return(
            <div className="dashboard-container">
                <h1 onClick={() => this.setState({selectedDashboard: !selectedDashboard})} className="dashboard-name">{dashboard.name}</h1>
                {selectedDashboard
                    ? <div className="dashboard">
                            {this.dashboard()}
                            <AddCardForm addCard={this.props.addCard} dashboard_id={dashboard.id} />
                        </div>
                    : null
                }
            </div>

        );
    }

}

export default Dashboard;