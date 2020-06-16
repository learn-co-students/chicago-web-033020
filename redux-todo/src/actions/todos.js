




export const addTodo = (newTodo) => {
  return {
    type: 'ADD_TODO',
    newTodo: newTodo
  }
}

export const fetchTodosSuccess = (todosJSON) => {
  return {
    type: "FETCH_TODOS_SUCCESS",
    todos: todosJSON
  }
}

export const updateFilter= (filterType) => {
  return {
    type: "UPDATE_FILTER",
    filterType: filterType
  }
}


