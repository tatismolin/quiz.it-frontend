import React from "react";
import Card from "./Card";

class Dashboard extends React.Component{

    state = {
        selectedDashboard: null
    }

    dashboard = () => {
        return this.props.dashboard.cards.map(card => {
            return(
                <Card card={card} />
            );
        })
    }

    render(){
        return(
            <div 
                className="dashboard-container" 
                onClick={() => this.setState({selectedDashboard: !this.state.selectedDashboard})}>
                        <h1 className="dashboard-name">{this.props.dashboard.name}</h1>
                        {this.state.selectedDashboard
                            ? <div className="dashboard">{this.dashboard()}</div>
                            : null
                        }
            </div>

        );
    }

}

export default Dashboard;