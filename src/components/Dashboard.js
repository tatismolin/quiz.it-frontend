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
                <Card card={card} />
            );
        })
    }

    render(){
        const {selectedDashboard} = this.state
        const {dashboard} = this.props
        return(
            <div 
                className="dashboard-container" 
                onClick={() => this.setState({selectedDashboard: !selectedDashboard})}>
                        <h1 className="dashboard-name">{dashboard.name}</h1>
                        {selectedDashboard
                            ? <div className="dashboard">
                                    {this.dashboard()}
                                    <AddCardForm />
                                </div>
                            : null
                        }

            </div>

        );
    }

}

export default Dashboard;