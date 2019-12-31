import React from "react";
import Dashboard from "./Dashboard";

function Home(props){

    const sortByName = (a, b) => {
        if(a.name > b.name){
            return 1
        }
        if(a.name < b.name){
            return -1
        }
        return 0
    }

    const displayDashboard = () => {
        return props.user.dashboards.sort(sortByName).map(dashboard => {
            return(
               <Dashboard key={dashboard.id} addCard={props.addCard} dashboard={dashboard} />
            );
        })
    }
    
    return(
        <div className="user">
            {props.user.dashboards
                ? displayDashboard()
                : null
            }
        </div>
    );

}

export default Home;