import React from 'react';
import DeleteablePainting from './DeleteablePainting';
import Painting from './Painting';

import { connect } from 'react-redux'

class PaintingList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      paintings: []
    }; 
  }

  componentDidMount() {
    fetch('http://localhost:3000/paintings')
    .then(resp => resp.json())
    .then(paintingsJSON => {
      this.props.fetchPaintingsSuccess(paintingsJSON)
    })
  }

  renderPaintings = () => {
    return this.props.paintings.map(p => (
      <DeleteablePainting
        key={p.id}
        painting={p}
      />
    ));
  }

  render() {
    console.log(this.props)
    return (
        <div>
            <div>
                <h1>All Paintings</h1>
                <div className="ui items">{this.renderPaintings()}</div>
            </div>
        </div>
    );
  }
}



const mapStateToProps = (state) => {
  return {
    paintings: state.paintings
  }
}

const mapDispatchToProps= (dispatch) => {
  return {
    fetchPaintingsSuccess: (paintingsJSON) => {
      const action = {
        type: 'FETCH_PAINTINGS_SUCCESS',
        paintings: paintingsJSON
      }

      dispatch(action)
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(PaintingList);
















