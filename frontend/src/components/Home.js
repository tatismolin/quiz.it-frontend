import React from "react";
import User from "./User";

function Home(props){

    const users = props.users.map(user => {
        return(
            <User user={user} />
        );
    })

    return(
        <div className="user">
            {users}
        </div>
    );

}

export default Home;