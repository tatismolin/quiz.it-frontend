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

  addDashboard = (dashboard) => {
    const {dashboards} = this.state;
    this.setState({
      dashboards: [...dashboards, dashboard]
    });
    
    fetch("http://localhost:3000/dashboards", {
      method: "POST",
      headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
      },
      body: JSON.stringify({dashboard})
    });
  };

  removeDashboard = (deletedDashboard) => {
    const {dashboards} = this.state;
    const newDashboardsState = dashboards.filter(dashboard => {
        return(
          dashboard.id !== deletedDashboard.dashboard_id
        );
    });
    this.setState({dashboards: newDashboardsState});

    fetch(`http://localhost:3000/dashboards/${deletedDashboard.dashboard_id}`, {
      method: "DELETE"
    });
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
          addDashboard={this.addDashboard}
          user_id={user.id} 
          removeDashboard={this.removeDashboard} 
        />

        <footer>
          <span className="footer-name" role="img" aria-label="heart">Created with 💚 by Me</span>
        </footer>
      </div>
    );
  };

}

export default App;