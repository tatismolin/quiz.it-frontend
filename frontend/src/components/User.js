import React from "react";
import Dashboard from "./Dashboard";

function User(props){

    const user = props.user.dashboards.map(dashboard => {
        return(
            <Dashboard dashboard={dashboard} />
        );
    })

    return(
        <div className="user">
            {user}
        </div>
    );

}

export default User;