Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cats, except: [:edit, :update, :destroy] do
    resources :houses, only: [:new, :create]
  end
  resources :houses, only: [:show]
  # get '/yards/new', to: 'yards#new', as: 'new_yard'
  resources :yards, except: [:destroy]


  root 'yards#index'
end
