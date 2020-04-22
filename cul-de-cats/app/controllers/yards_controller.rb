class YardsController < ApplicationController

  # Index
  get '/yards/?' do
    @yards = Yard.all
    erb :'yards/index'
  end

  # New
  get '/yards/new/?' do
    @cats = Cat.all
    erb :'yards/new'
  end

  # Create
  post '/yards/?' do
    p params[:yard]
    yard = Yard.create(params[:yard])
    redirect "/yards/#{yard.id}"
  end

  # Show
  get '/yards/:id' do
    @yard = Yard.find(params[:id])
    @yard.title
    erb :'yards/show'

  end
end