// import React, {Component} from "react";

// class EditCardForm extends Component{

//     state = {
//         name: " ",
//         content: " "
//     };
    
//     handleSubmit = (event) => {
//         event.preventDefault();
//         const {editCard, dashboard_id} = this.props;
//         editCard({...this.state, dashboard_id: dashboard_id});
//         this.setState({
//             name: " ",
//             content: " "
//         });
//         event.target.reset();
//     };

//     handleChange = (event) => {
//         const {name, value} = event.target;
//         this.setState({
//             [name]: value 
//         });
//     };

//     render(){
//         const {name, content} = this.state;
//         return(
//             <form 
//                 className="edit-form" 
//                 onSubmit={this.handleSubmit}>
//                     <div className="edit-form-content">
//                         <p className="form-name">Edit a Card</p>

//                         <label>Name</label>
//                         <input 
//                             type="text"
//                             name="name" 
//                             value={name} 
//                             onChange={this.handleChange}
//                             required
//                         />

//                         <label>Content</label>
//                         <textarea 
//                             type="text"
//                             name="content" 
//                             value={content} 
//                             onChange={this.handleChange}
//                             required>
//                         </textarea>

//                         <button 
//                             className="edit-button" 
//                             type="submit">
                                
//                                 Edit
//                         </button> 
//                     </div>
//             </form>
//         );
//     };

// }

// export default EditCardForm;