import React from 'react';
import logo from './logo.svg';
import './App.css';
import TodoContainer from './TodoContainer'
import Form from './Form'

class App extends React.Component {
  constructor(){
    super()
    this.state = {
      todos: []
    }
  }


  componentDidMount(){
    fetch('http://localhost:3000/todos')
    .then(resp => resp.json())
    .then(todoArr => {
      const updatedTodos = todoArr.map(todoObj => {
        return {
          ...todoObj,
          isFavorite: false
        }
      })

      this.setState({
        todos: updatedTodos
      })
    })
  }

  removeTodo = (id) => {
    const  updatedTodos = this.state.todos.filter(todoObj => todoObj.id !== id)
    this.setState({
      todos: updatedTodos
    })
  }

  favoriteTodo = (id) => {
    const updatedTodos = this.state.todos.map(todoObj => {
      if (todoObj.id === id) {
        return {
          ...todoObj,
          isFavorite: true
        }
      } else {
        return todoObj
      }
    })

    this.setState({
      todos: updatedTodos
    })

  }

  addTodo = (newTodo) => {
    const updatedTodos = [...this.state.todos, newTodo]

    this.setState({
      todos: updatedTodos
    }) 
  }

  render(){
    console.log(this.state.todos)

    return (
      <div className="App">
        <header className="App-header">
        <Form addTodo={this.addTodo} />
        <TodoContainer 
          todos={this.state.todos} 
          favoriteTodo={this.favoriteTodo}
          removeTodo={this.removeTodo}/>
        </header>
      </div>
    );
  }
}

export default App;

// 1. render all the todos that live in localhost:3000/todos
//
// get the data
// ---------
// set up a state where we will eventually hold it.
// make a fetch request in our ComponentDidMount
// once the fetch comes back: set the State to the backend data
// 
// render that data
// ----------
// pass the this.state.todos down to a child component as props
// child component will map over props.todos
// create a TodoCard that shows the details of each todo task
//
//
//
// 2.  add a new todo to my list (both be and fe)
//
//  Make a Form component
//  give the form onChange functionality
//  give the form submit functionality
//  once submitted:
//    update the parent state (this.state.todos)
//
//  update the backend by sending a post request
//
//
//
//
//
// 3. delete todos (both be be and fe)
//  add a delete button to each card
//  add a click listener to each btn
//  capture the id of each card
//  
//  pass down a callback funct into the todoCard
//  and then when a click happens make sure that callback gets invoked and passes the id up
//
//
//
// 3. the ability to favorite todos
//
//
//
//
//
//

// 4. ICEBOX:favorite a todo (update a todo to be starred)
