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

    fetch("http://localhost:3000/cards", {
      method: "POST",
      headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
      },
      body: JSON.stringify({card})
    })
  }

  removeCard = (card) => {
    const removedCard = card.card_id;
    fetch(`http://localhost:3000/cards/${removedCard}`, {
      method: "DELETE"
    })
  }

  editCard = (card) => {
    fetch(`http://[::1]:3000/cards/${card.id}`, {
      method: "PATCH",
      headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
      },
      body: JSON.stringify({
          name: "name",
          content: "content"
      })
    });
  }

  render(){
    return (
      <div className="app">
        <nav>
          <p className="app-name">Quiz.it</p>
          <input className="search-bar" placeholder="Search..."></input>
        </nav>

        <Home 
          user={this.state.user} 
          addCard={this.addCard} 
          removeCard={this.removeCard} 
          editCard={this.editCard} 
        />

        <footer>
          <p className="footer-name">Created by Me</p>
        </footer>
      </div>
    );
  }

}

export default App;