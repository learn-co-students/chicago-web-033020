class CatsController < ApplicationController

  # Index
  get '/cats/?' do
    @cats = Cat.all
    erb :'cats/index'
  end

  # New
  get '/cats/new/?' do
    @cat = Cat.new
    erb :'cats/new'
  end

  # Create
  post '/cats?' do
    @cat = Cat.new(name: params[:name], claw_count: params[:claw_count], coarseness: params[:coarseness])
    if @cat.valid?
      @cat.save
      redirect "/cats/#{@cat.id}"
    else
      erb :'cats/new'
    end
  end
  
  # Show
  get '/cats/:id/?' do
    id_to_search = params[:id]
    @cat = Cat.find(id_to_search)
    erb :'cats/show'
  end


end