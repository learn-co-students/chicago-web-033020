
export default function todos(state=[], action) {
  switch (action.type) {
    case 'ADD_TODO':
      return [...state, action.newTodo]
    case 'FETCH_TODOS_SUCCESS':
      return [...state, ...action.todos]
    default:
      return state
  }
}
