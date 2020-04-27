Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cats, except: [:edit, :update, :destroy]
  # get '/yards/new', to: 'yards#new', as: 'new_yard'
  resources :yards, only: [:index, :new, :create, :show]


  root 'yards#index'
end
