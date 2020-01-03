import React from "react";
import Dashboard from "./Dashboard";

function Home({dashboards}){

    const sortByName = (a, b) => {
        if(a.name > b.name){
            return 1;
        }
        if(a.name < b.name){
            return -1;
        }
        return 0;
    };

    const displayDashboard = () => {
        return dashboards.sort(sortByName).map(dashboard => {
            return(
               <Dashboard 
                    key={dashboard.id} 
                    dashboard={dashboard}
                />
            );
        });
    };
    
    return(
        <div className="user">
            {dashboards
                ? displayDashboard()
                : null
            }
        </div>
    );

}

export default Home;