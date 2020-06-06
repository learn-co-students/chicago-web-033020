
import React, { Component } from "react";
import Hog from './Hog'

class HogContainer extends Component {

  renderHogs = () => {
    return this.props.hogs.map( hogObj => {
      return <Hog {...hogObj} hideHog={this.props.hideHog}/>
    }) 
  }

  render() {
    return (
      <div className="ui three cards">
      { this.renderHogs() }
      </div>
    );
  }
}

export default HogContainer;
