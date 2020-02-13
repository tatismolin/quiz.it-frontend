import React from "react";
import Dashboard from "./Dashboard";
import AddDashboard from "./AddDashboard";

function Home({dashboards, addDashboard, user}){

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
            <AddDashboard
                addDashboard={addDashboard} 
                user_id={user.id} 
            />
        </div>
    );

}

export default Home;