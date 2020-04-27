class YardsController < ApplicationController

  def show
    @yard = Yard.find(params[:id])
  end

  def index
    @yards = Yard.all
  end

  def new
    @yard = Yard.new
    @cats = Cat.all
  end

  def create
    p "*" * 85
    p params
    yard = Yard.create!(yard_params)
    redirect_to yard
  end

  private

  def yard_params
    params.require(:yard).permit(:title, :size, :cat_id)
  end
end