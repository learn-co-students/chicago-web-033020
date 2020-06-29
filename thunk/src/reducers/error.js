

export default (state={}, action) => {
  switch(action.type){
    case 'FETCH_PAINTINGS_ERROR':
      return {
        ...state,
        message: action.message
      }
    default:
      return state
  }
}
