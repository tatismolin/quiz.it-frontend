import "./App.css";

import React, {Component} from "react";
import Home from "./components/Home";
import Search from "./components/Search";


class App extends Component{

  state = {
    user: {},
    dashboards: [],
    searchTerm: " ",
    cards: []
  };

  componentDidMount(){
    fetch("http://[::1]:3000/users")
      .then(response => response.json())
      .then(user => {
        const cards = user[0].dashboards.map(dashboard => {
          return dashboard.cards;
        });
        this.setState({
          user: user[0],
          dashboards: user[0].dashboards,
          cards: cards.flat()
        });
      });
  };

  updateSearchTerm = (searchTerm) => {
    this.setState({searchTerm});
  };

  filteredCards = () => {
      return(this.state.cards.filter(card => {
        return(card.name
          .toLowerCase()
          .includes(this.state.searchTerm)
        ) || (card.content
          .toLowerCase()
          .includes(this.state.searchTerm)
          )
      }));
  };

  render(){
    return (
      <div className="app">
        <nav>
          <p className="app-name">Quiz.it</p>
          <Search
            searchTerm={this.state.searchTerm}
            updateSearchTerm={this.updateSearchTerm}
            updateSearchTerm={this.updateSearchTerm}
          />
        </nav>

        <Home 
          user={this.state.user} 
          dashboards={this.state.dashboards}
          filteredCards={this.filteredCards()}
        />

        <footer>
          <p className="footer-name">Created with 💚 by Me</p>
        </footer>
      </div>
    );
  };

}

export default App;