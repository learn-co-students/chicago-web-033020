const imgUrl = 'https://dog.ceo/api/breeds/image/random/4';

async function fetchDogImages() {
  // fetch(imgUrl)
  //   .then((resp) => resp.json())
  //   .then((data) => renderDogImages(data.message))
  //   .catch((err) => console.error(err));

  try {
    const response = await fetch(imgUrl);
    const data = await response.json();
    renderDogImages(data.message);
  } catch {
    console.error(err);
  }
}

const dogImageContainer = document.getElementById('dog-image-container');
function renderDogImages(dogImages) {
  dogImages.forEach((image) => {
    dogImageContainer.innerHTML += `<img src=${image} height='200' width='200'>`;
  });
}

const breedUrl = 'https://dog.ceo/api/breeds/list/all';

let dogBreeds = [];
function fetchDogBreeds() {
  fetch(breedUrl)
    .then((resp) => resp.json())
    .then((data) => {
      dogBreeds = addSubBreeds(data.message);
      // dogBreeds = Object.keys(data.message);
      renderDogBreeds(dogBreeds);
    })
    .catch((err) => console.error(err));
}

function addSubBreeds(dogBreeds) {
  const newBreedsList = [];
  for (const breed in dogBreeds) {
    if (dogBreeds[breed].length) {
      dogBreeds[breed].forEach((subBreed) => {
        newBreedsList.push(`${subBreed} ${breed}`);
      });
    } else {
      newBreedsList.push(breed);
    }
  }
  return newBreedsList;
}

const dogBreedContainer = document.querySelector('#dog-breeds');
function renderDogBreeds(breeds) {
  dogBreedContainer.innerHTML = '';
  breeds.forEach((breed) => {
    dogBreedContainer.innerHTML += `<li>${breed}</li>`;
  });
}

dogBreedContainer.addEventListener('click', changeLiColor);
function changeLiColor(event) {
  if ((event.target.nodeName = 'LI')) {
    event.target.style.color = 'red';
  }
}
const startsWith = (event) => {
  const letter = event.target.value;
  const filteredBreeds = dogBreeds.filter((breed) => breed.startsWith(letter));
  renderDogBreeds(filteredBreeds);
};

const dogBreedFilter = document.getElementById('breed-dropdown');
dogBreedFilter.addEventListener('change', startsWith);

fetchDogBreeds();
fetchDogImages();
