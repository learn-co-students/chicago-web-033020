Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shoes, only: [:show, :new, :create]

  # get '/shoes/:id', to: 'shoes#show', as: 'shoe'
end
