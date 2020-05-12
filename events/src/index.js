



function main(){
  createFormListener()
}



function createFormListener(){
  const form = document.querySelector('form')

  form.addEventListener('submit', function(event){
    event.preventDefault()
    const comment = event.target[0].value


    const pTag = document.createElement('p')
    pTag.innerHTML = comment

    const commentsContainer = document.querySelector('#comments-container')
    commentsContainer.append(pTag, imgTag, h3Tag)


    event.target.reset()

  })
}



main()








































//  find the button off the DOM
//  bind the event Listener for a click event
//  trigger a alert event



// const alertBtn= document.querySelector('#alert-btn');

// alertBtn.addEventListener('click', function(){  
  // alert('hello world'); 
// })

// const consoleBtn= document.getElementById('console-btn')


// consoleBtn.addEventListener('click', handleLog)

// function handleLog(){
  // console.log('log something')
// }
