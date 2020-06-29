





export const fetchPaintingsSuccess = (paintings) => {
  return {
    type: 'FETCH_PAINTINGS_SUCCESS',
    paintings: paintings
  }
}

export const startFetchPaintings = () => {
  return {
    type: 'START_FETCH_PAINTINGS',
  }
}

export const fetchPaintingsError = (err) => {
  console.log('foo', err)
  return {
    type: 'FETCH_PAINTINGS_ERROR',
    message: err.message
  }
}


export const fetchPaintings = () => {
  return (dispatch) => {


    dispatch(startFetchPaintings())

    fetch('http://lasdfocalhost:3000/paintings')
    .then(resp => resp.json())
    .then(paintingsJSON => {
      dispatch(fetchPaintingsSuccess(paintingsJSON))
    })
    .catch(err => {

      console.log(err)
      dispatch(fetchPaintingsError(err))
    })
  }
}
