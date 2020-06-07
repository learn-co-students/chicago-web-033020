import React from 'react';


class TodoCard extends React.Component {


  handleDelete = () => {
    const { id } = this.props.todo
    const url = `http://localhost:3000/todos/${id}`

    const reqObj = {
      method: 'DELETE'
    }

    fetch(url, reqObj)
    .then(resp => resp.json())
    .then(data => {
       this.props.removeTodo(id)
    })

  }

  render(){
    const style = this.props.todo.isFavorite ? { color: 'yellow'} : {color: 'white'}
    return (
      <div style={style}>
      { this.props.todo.task }
      <button onClick={this.handleDelete } > Remove </button>
      <button onClick={() => this.props.favoriteTodo(this.props.todo.id)} > Favorite </button>
      </div>
    );
  }
}

export default TodoCard;

