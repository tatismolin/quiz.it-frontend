import React from "react";
import User from "./User";

function UserContainer(props){

    const allUsers = props.users.map(user => {
        return(
            <User user={user} />
        );
    })

    return(
        <div className="user-container">
            {allUsers}
        </div>
    );

}

export default UserContainer;