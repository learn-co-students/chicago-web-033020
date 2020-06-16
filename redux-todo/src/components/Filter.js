
import React from 'react';

import { connect } from 'react-redux'
import { updateFilter } from '../actions/todos'

class Filter extends React.Component {
  handleClick = (filterType) => {
    console.log(filterType)
    this.props.updateFilter(filterType)
  }

  render() {
    console.log(this.props)
    return (
      <div className="filter">
      <h4 onClick={() => this.handleClick('all')} value='all'>Show All</h4>
      <h4 onClick={() => this.handleClick('completed')} value='completed'>Completed</h4>
      <h4 onClick={() => this.handleClick('active')} value='active'>Active</h4>
      </div>
    );
  }
}


const mapDispatchToProps = {
  updateFilter
}


export default connect(null, mapDispatchToProps)(Filter)
