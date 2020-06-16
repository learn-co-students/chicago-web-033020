import React from 'react';
import { connect } from 'react-redux'
import { addTodo } from '../actions/todos'

class Form extends React.Component {
  state = { task: '' }


  handleChange = (e) => {
    this.setState({
      task: e.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    const newTodo = { task: this.state.task, completed: true }


    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      }, 
      body: JSON.stringify(newTodo)
    }

    fetch('http://localhost:3000/todos', reqObj)
    .then(resp => resp.json())
    .then(todo => {
      this.props.addTodo(todo)
      this.setState({
        task: ''
      })
    })
  }


  
  render() {
    return (
      <form className="form" onSubmit={this.handleSubmit}>
        <input 
          onChange={this.handleChange}
          className='new-todo' 
          type='text' 
          placeholder='add a todo' value={this.state.task}/>
      </form>
    );
  }
}

const mapDispatchToProps = {
    addTodo,
}

export default connect(null, mapDispatchToProps)(Form);





