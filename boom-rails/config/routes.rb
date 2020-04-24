Rails.application.routes.draw do
  resources :dinosaurs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/sounds', to: 'sounds#index', as: 'sounds'

  resources :sounds, only: [:index, :show]
end
