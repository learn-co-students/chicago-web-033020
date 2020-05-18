const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`
const main = document.querySelector('main')




function start(){
  fetchPokemon()
  createClickListener()
}


function createClickListener(){
  main.addEventListener('click', function(event){
    console.log('-----------', event.target)
    if(event.target.className === 'add') {
      handleAddPokemon(event)
    } else if(event.target.className ==='release') {
      console.log('-----------', 'handlerelease')
    }
  })
}

function handleAddPokemon(event){
  const trainerId = event.target.dataset['trainerId']

  const reqObj = {
    method: 'POST', 
    headers: {
      'Content-Type': 'application/json'
    },
    body:  JSON.stringify({ trainer_id: trainerId })
  }

  fetch(POKEMONS_URL, reqObj)
    .then(resp => resp.json())
    .then(data => {console.log(data)})
  // build reqObj
  // .
  // build the fetch req
  // update fe
}


function fetchPokemon(){
  fetch(TRAINERS_URL)
    .then(resp => resp.json())
    .then(trainers => { 
      console.log(trainers)
      trainers.forEach(trainer => {
        renderTrainerCard(trainer)
      })
    })

  // get request to the trainerso
  // to grab the trainer and associated pokemongs
  // loop over each trainer and create a crad that represents the trainer along with their pokemon
}



function renderTrainerCard(trainer) {

  const pokemonString = trainer.pokemons.map(function(pokemon){
    return  `<li>${pokemon.species}(${pokemon.nickname}) <button class="release" data-pokemon-id="${pokemon.id}">Release</button></li>`
  }).join('')

  const trainerCard = `<div class="card" data-id="${trainer.id}"><p>${trainer.name}</p><button data-trainer-id="${trainer.id}" class="add">Add Pokemon</button><ul>${pokemonString}</ul></div>`

  main.innerHTML += trainerCard

}

start()


