import React from "react"

function Search(props){

    const updateSearchTerm = event => {
        props.updateSearchTerm(event.target.value);
    };

    return (
        <form className="search">
            <input
                type="text"
                placeholder="Search for..."
                value={props.searchTerm}
                onChange={updateSearchTerm}
            />
        </form>
    );

}

export default Search;