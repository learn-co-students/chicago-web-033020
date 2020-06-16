



import { combineReducers } from 'redux'
import todos from './todos'
import auth from './auth'
import filter from './filter'

export default combineReducers({
  auth,
  todos,
  filter
})
