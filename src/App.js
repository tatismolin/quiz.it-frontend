import "./App.css";

import React, {Component} from "react";
import Home from "./components/Home";

class App extends Component {

  state = {
    user: {}
  }

  componentDidMount(){
    fetch("http://[::1]:3000/users")
      .then(response => response.json())
      .then(user => this.setState({
        user: user[0]
      }))
  }
  
  addCard = (card) => {
    const dashboards = this.state.user.dashboards.filter(dashboard => dashboard.id !== card.dashboard_id);
    const dashboard = this.state.user.dashboards.find(dashboard => dashboard.id === card.dashboard_id);
    dashboard.cards.push(card);

    this.setState(prevState => ({
      ...prevState,
      dashboards: [
        ...dashboards, dashboard
      ]
    }))
    
    console.log("dashboards", dashboards)
    console.log("dashboard", dashboard)
  }

  render(){
    return (
      <div className="app">
        <nav>
          <div className="button-div">
            <button>Home</button>
            <button>LogOut</button>
          </div>
          <h1>Quizy</h1>
          <input className="search-bar" placeholder="Search"></input>
        </nav>
          <Home addCard={this.addCard} user={this.state.user} />
        <footer>
          <h1>Created by Me</h1>
        </footer>
      </div>
    );
  }

}

export default App;