class YardsController < ApplicationController

  def show
    @yard = Yard.find(params[:id])
  end

  def index
    @yards = Yard.all
  end

  def new
    @cats = Cat.all
  end

  def create
    yard = Yard.create!(title: params[:yard][:title], size: params[:yard][:size], cat_id: params[:yard][:cat_id])
    redirect_to yard
  end
end