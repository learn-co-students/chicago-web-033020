class CatsController < ApplicationController

  # Index
  get '/cats' do
    @cats = Cat.all
    erb :'cats/index'
  end

  # New
  get '/cats/new' do
    erb :'cats/new'
  end

  # Create
  post '/cats' do
    cat = Cat.create(name: params[:name], claw_count: params[:claw_count], coarseness: params[:coarseness])
    p cat
    redirect "/cats/#{cat.id}"
  end
  
  # Show
  get '/cats/:id' do
    id_to_search = params[:id]
    @cat = Cat.find(id_to_search)
    erb :'cats/show'
  end


end