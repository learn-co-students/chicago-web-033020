
function main() {
  fetchBooks()
  createFormListener()
}



function createFormListener(){
  const form = document.querySelector('form')


  function handleSubmit(event){
    event.preventDefault()

    const formData = {
      title: event.target[0].value,
      author: event.target[1].value,
    }
    event.target.reset()

    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    }

    fetch('http://localhost:3000/books', reqObj)
      .then(resp => resp.json())
      .then(book => {
        renderBook(book)
      })
  }

  form.addEventListener('submit', handleSubmit)
}








  // find the form that lives on our DOM
  // bind an eventListener  to a submit
  // once submitted:
  //   x scrape the data off the form
  //    update the BE with the new book
  //    update the DOM with the new book


function renderBook(book){
  const bookContainer = document.querySelector('#book-list')
  bookContainer.innerHTML += `<p>${book.title} - ${book.author}   <button>delete</button></p>`
}


function fetchBooks(){
  fetch('http://localhost:3000/books')
    .then(resp => resp.json())
    .then(books => {
      books.forEach(function(book){
        renderBook(book)


        // pTag = document.createElement('p')
        // pTag.innerText = book.title
        // bookContainer.append(pTag)

        // find the div that we'll add the ptag to
        // create the ptag
        // add the ptag to the div
      })

    })



  // make a fetch request to get book data
  // extract the json from the http response
  //
  // loop over  the array of book data
  // for each book
  //   create a ptag with bookInfo
  //   shove ptag into div
}



main()
