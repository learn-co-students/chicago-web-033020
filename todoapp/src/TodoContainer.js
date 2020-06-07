

import React from 'react';

import TodoCard from './TodoCard'

class TodoContainer extends React.Component {

  renderTodos = () => {
    return this.props.todos.map(todoObj => <TodoCard todo={todoObj} favoriteTodo={this.props.favoriteTodo} removeTodo={this.props.removeTodo}/>)
  }

  render(){
    return (
      <div className="App">
      {this.renderTodos()}
      </div>
    );
  }
}

export default TodoContainer;

