import React, { Component } from 'react'

class RandomKoala extends Component {
  renderKoalas = () => {
    return this.props.koalas.map(koalaObj => {
      return <img src={koalaObj.image_url} />
    })
  }

  render () {
    console.log('RandomKoala', 'Render')
    return (
      <div className="app-children">
      { this.renderKoalas() }
      </div>
    )
  }
}

export default RandomKoala
