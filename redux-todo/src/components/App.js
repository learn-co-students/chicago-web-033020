import React from 'react';
import logo from '../logo.svg';
import Form from './Form';
import Filter from './Filter';
import TodoContainer from './TodoContainer';

import '../App.css';

class App extends React.Component {
  render() {
    return (
      <div className="App">
        <Filter />
        <Form />
        <TodoContainer />
        <header className="App-header">
        </header>
      </div>
    );
  }
}

export default App;
