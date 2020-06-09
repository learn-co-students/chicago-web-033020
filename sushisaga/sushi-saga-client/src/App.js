import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';

// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {
  constructor() {
    super()
    this.state = {
      sushis: [],
      budget: 20,
      index: 0,
    }
  }

  componentDidMount(){
    fetch(API)
    .then(resp => resp.json())
    .then(sushisJSON => {
      const modifiedSushis = sushisJSON.map(sushiObj => {
        return {
          ...sushiObj,
          isEaten: false
        }
      }).slice(0, 10)

      this.setState({
        sushis: modifiedSushis
      })
    })
  }

  handleEaten = (id, price) => {
    if (price > this.state.budget){
      return
    }


    const updatedSushis = this.state.sushis.map(sushiObj => {
      if (sushiObj.id === id){
        return {
          ...sushiObj,
          isEaten: true
        }
      } else {
        return sushiObj
      }
    })

    this.setState(prevState => {
      return {
        sushis: updatedSushis,
        budget: prevState.budget - price
      }
    })
  }

  handleMore = () => {
    // check if we've moved passed the allowed index

    if ((this.state.index + 4) > this.state.sushis.length) {
      this.setState({
        index: 0
      })
    } else {
      this.setState(prevState => {
        return {
          index: (prevState.index + 4) 
        }
      })
    }


  }
  

  render() {
    console.log(this.state)
    const fourSushis = this.state.sushis.slice(this.state.index, this.state.index + 4); 

    const eatenSushis = this.state.sushis.filter(sushiObj => sushiObj.isEaten)

    return (
      <div className="app">
        <SushiContainer 
          sushis={fourSushis} 
          handleEaten={this.handleEaten} 
          handleMore={this.handleMore}  />

        <Table eatenSushis={eatenSushis} budget={this.state.budget} />
      </div>
    );
  }
}

export default App;
