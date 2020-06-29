import React from 'react';
import Navbar from './Navbar';
import PaintingList from './PaintingList';
import About from './About';
import Login from './Login';
import { Route, Switch } from 'react-router-dom'
import {BrowserRouter} from 'react-router-dom'

const App = () => {
  return (
    <BrowserRouter>
      <div className="App">
        <Navbar icon="paint brush" title="Painterest" description="out app" />
        <Switch>
          <Route path={'/about'} component={About} />
          <Route path={'/'} component={PaintingList} />
        </Switch>
      </div>
    </BrowserRouter>
  );
};

export default App;




