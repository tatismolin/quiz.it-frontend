import React from "react";

function Search(props){

    const updateSearchTerm = (event) => {
        props.updateSearchTerm(event.target.value);
    };

    return (
        <form className="search">
            <input
                type="search"
                placeholder="Search for..."
                onChange={updateSearchTerm}
            />
        </form>
    );

}

export default Search;