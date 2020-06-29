






export default (state=false, action) => {
  console.log(action)
  switch(action.type) {
    case 'START_FETCH_PAINTINGS':
      return true
    case 'FETCH_PAINTINGS_SUCCESS':
    case 'FETCH_PAINTINGS_ERROR':
      return false
    default:
      return state
  }
}
