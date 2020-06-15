

export default function paintings(state = [], action) {
  switch (action.type) {
    case 'HANDLE_VOTE':
      const updatedPaintings = state.map(p => {
          if (p.id !== action.id) {
            return p;
          } else {
            return { ...p, votes: p.votes + 1 };
          }
        })
      console.log(updatedPaintings)
      return updatedPaintings
    case 'FETCH_PAINTINGS_SUCCESS':
      return [...action.paintings]
    default:
      return state
  }
}
