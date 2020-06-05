import React, { Component } from 'react'

class DigitalClock extends Component {
  constructor(){
    super()
    const d = new Date();
    const hours = d.getHours()
    const mins= d.getMinutes()
    const secs = d.getSeconds()
    const time = `${hours} : ${mins} : ${secs}`

    this.state = {
      time: time,
    }

    this.intervalId = null
  }

  componentDidMount(){
    const intervalId = setInterval(() => {
      const d = new Date();
      const hours = d.getHours()
      const mins= d.getMinutes()
      const secs = d.getSeconds()
      const time = `${hours} : ${mins} : ${secs}`

      this.setState({
        time: time
      })

      console.log('hello this time is', time)
    }, 1000)

    this.intervalId = intervalId
  }

  componentWillUnmount(){
    clearInterval(this.intervalId)
  }

  render () {
    return (
      <div className="app-children">
        <h2 id="digital">
          {this.state.time}
        </h2>
      </div>
    )
  }
}

export default DigitalClock
