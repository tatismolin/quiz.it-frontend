import React, {Component} from "react";

class AddCardForm extends Component{

    state = {
        name: " ",
        content: " "
    };
    
    handleSubmit = (event) => {
        event.preventDefault();
        const {addCard, dashboard_id} = this.props;
        addCard({...this.state, dashboard_id: dashboard_id});
        this.setState({
            name: " ",
            content: " "
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
        const {name, content} = this.state;
        return(
            <form 
                className="add-form" 
                onSubmit={this.handleSubmit}>
                    <div className="add-form-content">
                        <p className="form-name">Add a Card</p>

                        <label>Name</label>
                        <input 
                            type="text"
                            name="name" 
                            value={name} 
                            onChange={this.handleChange}
                            required
                        />

                        <label>Content</label>
                        <textarea 
                            type="text"
                            name="content" 
                            value={content} 
                            onChange={this.handleChange}
                            required>
                        </textarea>
                        
                        <button 
                                className="add-button" 
                                type="submit">

                                    Add
                        </button> 
                    </div>
            </form>
        );
    };

}

export default AddCardForm;