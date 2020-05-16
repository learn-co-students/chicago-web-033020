function main(){
  fetchAnimals()
  createFormListener()
}


function createFormListener(){
  const form = document.querySelector('form')
  form.addEventListener('submit', function(event){
    event.preventDefault()
    const formData = {
      name: event.target[0].value,
      gender: event.target[1].value,
      species: event.target[2].value
    }

    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    }

    fetch('http://localhost:3000/animals', reqObj)
      .then(resp => resp.json())
      .then(animal => {
         const tbody = document.querySelector('tbody')
         const animalRow = `<tr><td>${animal.name}</td><td>${animal.gender}</td><td>${animal.species}</td></tr>`
         tbody.innerHTML += animalRow
      })
  })
}

function fetchAnimals(){
  fetch('http://localhost:3000/animals')
    .then(resp => resp.json())
    .then(animals => {
      animals.forEach(animal => {
         const tbody = document.querySelector('tbody')
         const animalRow = `<tr><td>${animal.name}</td><td>${animal.gender}</td><td>${animal.species}</td></tr>`
         tbody.innerHTML += animalRow
      })
    })
}


main()
