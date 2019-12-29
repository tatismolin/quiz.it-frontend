import React, {Component} from "react";

class AddCardForm extends Component{

    state = {
        name: " ",
        content: " "
    }

    handleSubmit = (event) => {
        event.preventDefault()
        this.props.addCard(this.state)
        this.setState({
            name: " ",
            content: " "
        })
        event.target.reset()
    }

    handleChange = (event) => {
        const {name, value} = event.target
        this.setState({
            [name]: value 
        })
    }

    render(){
        const {name, content} = this.state
        return(
            <form className="form" onSubmit={this.handleSubmit}>
                <div className="form-content">
                    <h1 className="form-name">Add a new Card</h1>
                    <label>Name</label>
                    <input 
                        type="text"
                        name="name" 
                        value={name} 
                        onChange={this.handleChange}
                        required
                    />
                    <label>Content</label>
                    <input
                        type="text"
                        name="content" 
                        value={content} 
                        onChange={this.handleChange}
                        required
                    />
                    <button className="add-button" type="submit">Add</button> 
                </div>
            </form>
        );
    }

}

export default AddCardForm;