import React, { Component } from 'react';

import WidgetSelector from './components/WidgetSelector'
import DigitalClock from './components/DigitalClock'
import StockTicker from './components/StockTicker'

class App extends Component {
  constructor(){
    super()
    this.state = {
      showClock: true
    }
  }

  componentDidMount(){
    fetch1

    fetch2

  }
  
  toggleWidget =() => {
    this.setState(prevState => {
      return { showClock: !prevState.showClock }
    })
  }

  render() {
    return ( 
      <div id='app'>
        <WidgetSelector toggleWidget={this.toggleWidget} />

      {
        this.state.showClock
        ?
        <DigitalClock /> 
        :
        <StockTicker />
      }
      </div>
    )
  }
}

export default App;


