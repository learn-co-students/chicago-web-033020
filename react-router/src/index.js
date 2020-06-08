import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import {BrowserRouter} from 'react-router-dom'

// 4 components that React Router provides
// -------
// BrowserRouter => is going to be the component that we wrap out entire application in.
//
// Link  => is the ReactRouter analog for aTags. updates the url in the browser (*without actually making a get Request to a backend)
//
// Route => Cconditionally determines if the url matches its path,
//          uf the path matches then it will render the assigned component
//
// Switch => will be provided with many child Route components it will select the first one that matches 



import 'semantic-ui-css/semantic.min.css';

ReactDOM.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>,
  document.getElementById('root')
);

