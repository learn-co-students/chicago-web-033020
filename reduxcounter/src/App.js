
import React from 'react';

import logo from './logo.svg';
import './App.css';
import { createStore } from 'redux'



// REDUCER
// reducer is what gets passed to the store when it is created.
// as soon as the store gets created, it runs the reducer for the first time. This is where it will find the initialState
//
// reducer gets two arguments passed to it:  the currentState and the action
// whatever the reducer returns is what the next state will be


const initialState = {
  count: 100,
  clicks: 0
}

const reducer = (state=initialState, action) => {
  switch(action.type) {
    case 'ADD': 
      return {
        ...state, 
        count: state.count + 1,
        clicks: state.clicks + 1
      }
    case 'SUBTRACT': 
      return {
        ...state,
        count: state.count - 1,
        clicks: state.clicks + 1
      }
    case 'RESET_CLICK': 
      return {
        ...state,
        clicks: 0
      }

    default: 
      return state
  }
}


const store = createStore(reducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
)













class App extends React.Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <Title />
          <Counter />
        </header>
      </div>
    );
  }
}

class Title extends React.Component {
  componentDidMount(){
    store.subscribe(() => {
      this.forceUpdate()
    })
  }


  resetClick = () =>{
    const action = { type: 'RESET_CLICK' }
    store.dispatch(action)
  }
  
  render() {
    return (
      <div>
        <h1>clicks: {store.getState().clicks}</h1>
         <button onClick={this.resetClick}> Reset Click Coount</button>
      </div>
    );
  }
}

class Counter extends React.Component {

  componentDidMount() {
    store.subscribe(() => {
      this.forceUpdate()
    })
  }

  add = () => {
    const action = { type: 'ADD' }
    store.dispatch(action)
  }

  subtract= () => {
    const action = {type: 'SUBTRACT'}
    store.dispatch(action)
  }

  render() {
    return (
      <div>
       <h4>{store.getState().count}</h4>
      <button onClick={this.subtract}>-</button>
      <button onClick={this.add}>+</button>
      </div>
    );
  }
}

export default App;






