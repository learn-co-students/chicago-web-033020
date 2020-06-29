





import { combineReducers } from 'redux'
import paintings from './paintings'
import loader from './loader'
import error from './error'

export default combineReducers({
  paintings,
  loader,
  error
})
