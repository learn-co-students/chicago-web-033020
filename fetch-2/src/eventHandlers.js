
function handleSearchInput(event, allPokemonData, pokemonContainer) {
  const filteredPokes = allPokemonData.filter(pokeObj => {
    return pokeObj.name.includes(event.target.value.toLowerCase())
  })
  const filteredPokeHTML = renderAllPokemon(filteredPokes)
  pokemonContainer.innerHTML = filteredPokeHTML ? filteredPokeHTML : `<p><center>There are no Pokémon here</center></p>`
}

function handleCreatePokemon(event, pokemonContainer) {
  event.preventDefault()
  const formData = {
    name: event.target[0].value,
    sprites: {
      front: event.target[1].value
    }
  }
  event.target.reset()

  const reqObj = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(formData)
  }


  fetch('http://localhost:3000/pokemon', reqObj)
    .then(resp => resp.json())
    .then(pokemon => {
      const pokeCard = renderSinglePokemon(pokemon)
      pokemonContainer.innerHTML += pokeCard
    })


}

function handleClick(event, allPokemonData) {

  if (event.target.dataset.action === 'flip') { 
    const clickedPokemon = allPokemonData.find((pokemonObject) => pokemonObject.id == event.target.dataset.id)
    event.target.src = (event.target.src === clickedPokemon.sprites.front ? clickedPokemon.sprites.back : clickedPokemon.sprites.front)
  } else if(event.target.dataset.action === 'delete'){
    // i know i clicked on the deletebutton
    //
    // console.log(event.target)
    //
    // grab the id of the pokemon that just got deleted
    // create the url and send the delete fetch request
    //
    // update the front end and remove that pokecard

    const pokeId = event.target.dataset.id

    const reqObj = {
      method: 'DELETE'
    }

    fetch(`http://localhost:3000/pokemon/${pokeId}`, reqObj)
      .then(resp => resp.json())
      .then(data => {
        event.target.parentNode.parentNode.remove()
        console.log(data)
      })

    
  }
}

/************************* Helper Fns for Producing HTML **********************/
function renderAllPokemon(pokemonArray) {
  return pokemonArray.map(renderSinglePokemon).join('')
}

function renderSinglePokemon(pokemon) {
  return (`
  <div class="pokemon-card">
    <div class="pokemon-frame">
      <h1 class="center-text">${pokemon.name}</h1>
      <div class="pokemon-image">
        <img data-id="${pokemon.id}" data-action="flip" class="toggle-sprite" src="${pokemon.sprites.front}">
      </div>
      <button data-id=${pokemon.id} data-action="delete" class="pokemon-button">Delete</button>
    </div>
  </div>`)
}














