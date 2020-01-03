import "./App.css";
import React, {Component} from "react";
import Home from "./components/Home";
import Search from "./components/Search";
import SearchedCards from "./components/SearchedCards";

class App extends Component{

  state = {
    user: {},
    dashboards: [],
    searchTerm: "",
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
    const {cards, searchTerm} = this.state;
      return(cards.filter(card => {
        return(card.name
          .toLowerCase()
          .includes(searchTerm.toLowerCase())
        ) || (card.content
          .toLowerCase()
          .includes(searchTerm.toLowerCase())
          )
      }));
  };

  render(){
    const {searchTerm, user, dashboards} = this.state;
    return (
      <div className="app">
        <nav>
          <p className="app-name">Quiz.it</p>
          <Search
            searchTerm={searchTerm}
            updateSearchTerm={this.updateSearchTerm}
          />
        </nav>

        <SearchedCards 
          filteredCards={this.filteredCards()} 
          searchTerm={searchTerm}
          />

        <Home 
          user={user} 
          dashboards={dashboards}
        />

        <footer>
          <p className="footer-name">Created with 💚 by Me</p>
        </footer>
      </div>
    );
  };

}

export default App;