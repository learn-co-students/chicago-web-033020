import React from 'react';
import Navbar from './Navbar';
import PaintingList from './PaintingList';
import PaintingShow from './PaintingShow';
import Counter from './Counter';
import About from './About';
import Login from './Login';
import PaintingShowContainer from './PaintingShowContainer';
import { Route, Switch } from 'react-router-dom'

const App = () => {
  return (
    <div className="App">
      <Navbar icon="paint brush" title="Painterest" description="out app" />
      <Switch>
        <Route path={'/about'} component={About} />
        <Route path={'/paintings/:paintingId'} component={PaintingShowContainer} />
        <Route path={'/paintings'} component={PaintingList} />
        <Route path={'/login'} component={Login} />
      </Switch>
    </div>
  );
};

export default App;




