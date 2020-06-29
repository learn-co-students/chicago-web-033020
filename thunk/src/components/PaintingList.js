import React from 'react';
import DeleteablePainting from './DeleteablePainting';
import Painting from './Painting';
import { fetchPaintings } from '../actions/paintings'
import { connect } from 'react-redux'

class PaintingList extends React.Component {
  componentDidMount() {
    this.props.fetchPaintings()
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
    const { loader } = this.props
    if (this.props.error.message) {
      return <div>
        <h4> oops something went wrong see the error below</h4>
        <p>{this.props.error.message}</p>

      </div>
    }
    return (
      <div>
        <div>
          <h1>All Paintings</h1>
          <div className="ui items">{loader ? <h4>LOADING...</h4> : this.renderPaintings()}</div>
        </div>
      </div>
    );
  }
}



const mapStateToProps = (state) => {
  return {
    paintings: state.paintings,
    loader: state.loader,
    error: state.error
  }
}

const mapDispatchToProps = {
  fetchPaintings
}


export default connect(mapStateToProps, mapDispatchToProps)(PaintingList);
















