import "./App.css";

import React, {Component} from "react";
import UserContainer from "./components/UserContainer";
import Dashboard from "./components/Dashboard";

class App extends Component {

  state = {
    users: []
  }

  componentDidMount(){
    fetch("http://[::1]:3000/users")
      .then(response => response.json())
      .then(users => this.setState({
        users: users
      }))
  }

  render(){
    return (
      <div className="app">
        <nav>Navigation Bar</nav>
        <header>Quizy</header>
        <UserContainer users={this.state.users} />
        <footer>Footer</footer>
      </div>
    );
  }

}

export default App;
