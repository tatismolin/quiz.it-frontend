import React, {Component} from "react";

class AddDashboard extends Component{

    state = {
        name: " "
    };

    handleSubmit = (event) => {
        event.preventDefault();
        const {addDashboard, user_id} = this.props;
        addDashboard({...this.state, user_id: user_id});
        this.setState({
            name: " "
        });
        event.target.reset();
    };

    handleChange = (event) => {
        const {name, value} = event.target;
        this.setState({
            [name]: value 
        });
    };
    
    render(){
        const {name} = this.state;
        return(
            <div className="dashboard-form-container">
                <form 
                    className="dashboard-form-content"
                    onSubmit={this.handleSubmit}>
                    <input 
                        className="dashboard-form-input"
                        type="text"
                        name="name" 
                        value={name} 
                        onChange={this.handleChange}
                        placeholder="Enter Dashboard Name"
                        required
                    />
                    <button 
                        className="dashboard-form-button"
                        type="submit">
                            <span role="img" aria-label="heart" className="dashboard-form-name">➕ Add a Dashboard</span>
                    </button>
                </form>
            </div>
        );
    };

}

export default AddDashboard;