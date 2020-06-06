
import React from 'react'

class Hog extends React.Component {
  constructor(){
    super()
    this.state = {
      showDetails: true
    }
  }

  renderImage = () => {
    const imgName = this.props.name.toLowerCase().replace(/ /g, '_')

    const image = require(`../hog-imgs/${imgName}.jpg`)

    return <img src={image} />
  }

  renderDetails = () => {
    const { 'highest medal achieved':medal , specialty, weight } = this.props

    return <div>
      <p>{medal}</p>
      <p>{specialty}</p>
      <p>{weight}</p>
    </div>
  }

  toggleDetails = () =>{
    this.setState(prevState => {
      return {
        showDetails: !prevState.showDetails
      }
    })
  }


  render() {
    const { name } = this.props
    return (
      <div className="ui card pigTile">
        <h4>{name}</h4>
        {this.renderImage()}
        { this.state.showDetails ? this.renderDetails() : undefined }
        <br />

        <button onClick={this.toggleDetails}>Show Details</button>
        <button onClick={() => this.props.hideHog(name)}>Hide Hog</button>
      </div>
    );
  }
}

export default Hog;
