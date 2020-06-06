import React, { Component } from "react";
import "../App.css";
import Nav from "./Nav";
import hogs from "../porkers_data";
import Filter from "./Filter";
import HogContainer from './HogContainer'

class App extends Component {
  constructor(){
    super()

    const updatedHogs = hogs.map(hogObj => {
      return {
        ...hogObj,
        isHidden: false
      }
    })

    this.state = {
      hogs: updatedHogs,
      showGreased: false,
      sortBy: ''
    }
  }

  componentDidMount(){
    fetch()
    .then(data => {
      const updatedHogs = hogs.map(hogObj => {
        return {
          ...hogObj,
          isHidden: false
        }
      })

      this.setState({

        hogs: data
      })
    })
  }

  toggleGreased = () => {
    this.setState(prevState => {
      return {
        showGreased: !prevState.showGreased
      }
    })
  }

  changeSort= (event) => {
    this.setState({
      sortBy: event.target.value
    })
  }

  sortHogs = () => {
    let hogs = this.state.hogs.filter(hogObj => !hogObj.isHidden)


    if (this.state.showGreased) {
      hogs = hogs.filter(hogObj => hogObj.greased)
    }

    if(this.state.sortBy === '') {
      return hogs
    }

    if(this.state.sortBy === 'weight') {

      hogs = hogs.sort(function (hogA, hogB) {
        return hogA.weight - hogB.weight;
      });

    } else if(this.state.sortBy === 'name') {
      hogs = hogs.sort(function (hogA, hogB) {
        var nameA = hogA.name.toUpperCase(); 
        var nameB = hogB.name.toUpperCase(); 

        if (nameA < nameB) {
          return -1;
        }
        if (nameA > nameB) {
          return 1;
        }

        return 0;
      });

    }


    return hogs
  }

  hideHog = (name) => {
    fetch()
    const updatedHogs = this.state.hogs.map(hogObj => {
      if (name === hogObj.name){
        return {
          ...hogObj,
          isHidden: true
        }
      } else {
        return hogObj
      }
    })

    this.setState({
      hogs: updatedHogs
    })
  }



  render() {
    const hogsToShow = this.sortHogs()


    return (
      <div className="App">
        <Nav />
        <Filter toggleGreased={this.toggleGreased} changeSort={this.changeSort}/>
        <HogContainer hogs={hogsToShow} hideHog={this.hideHog} />
      </div>
    );
  }
}

export default App;
