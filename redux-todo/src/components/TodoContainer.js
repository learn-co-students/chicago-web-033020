



import React from 'react';
import {connect } from 'react-redux'
import { fetchTodosSuccess } from '../actions/todos'

class TodoContainer extends React.Component {

  componentDidMount(){
    fetch('http://localhost:3000/todos')
    .then(resp => resp.json())
    .then(todosJSON => {
      this.props.fetchTodosSuccess(todosJSON)
    })
  }


  render() {
    console.log(this.props)
    return (
      <div className="cont">
       { this.props.todos.map(todoObj => { return <p>{todoObj.task}</p>
       })}
      </div>
    );
  }
}


const findTodos = (state) => {
  if (state.filter === 'all') {
    return state.todos
  } else if (state.filter === 'completed') {
    return state.todos.filter( todo => todo.completed)
  } else {
    return state.todos.filter( todo => !todo.completed)
  }
}



const mapStateToProps = (state) => {
  const filteredTodos = findTodos(state)


  return {
    todos: state.todos
  }
}

// const mapDispatchToProps = (dispatch) => {
  // return {
    // fetchTodosSuccess: (todosJSON) => {
      // const action = fetchTodosSuccess(todosJSON)
      // dispatch(fetchTodosSuccess(todosJSON))
    // }
  // }
// }

const mapDispatchToProps = {
  fetchTodosSuccess
}


export default connect(mapStateToProps, mapDispatchToProps)(TodoContainer);



// Some new Event is happening (a user can now be deleted/ network reqw to grab todos)
//  build out the new action in your actions folder
// wire up that component so it can either read or write to the reduxcx store (update either mapState    or mapDispatch
// use the new props in my component
// update the reducer so that it can handle the new action
//
//





