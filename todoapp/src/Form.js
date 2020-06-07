


import React from 'react';

class Form extends React.Component {
  constructor(){
    super()
    this.state = {
      task: ''
    }
  }

  handleChange = (event) => {
    this.setState({
      task: event.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()

    const reqObj = {
      method: 'post',
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify(this.state)
    }

    fetch('http://localhost:3000/todos', reqObj)
    .then(resp => resp.json())
    .then(todo => {
      this.props.addTodo(todo)

      this.setState({
        task: ''
      })
    })






    // capture the new todo in an objhect //formData
    //  make sure the parent component recieves it so it can update its state
  }

  render(){
    return (
      <form onSubmit={this.handleSubmit}>
      <input onChange={this.handleChange} type='text'  value={this.state.task} />
      <input type='submit' />
      </form>
    );
  }
}

export default Form;

