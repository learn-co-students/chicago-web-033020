class YardsController < ApplicationController
  before_action :find_yard, only: [:show, :edit]
  before_action :get_cats, only: [:new, :edit]

  def show
  end

  def index
    @yards = Yard.all
  end

  def new
    @yard = Yard.new
  end

  def create
    yard = Yard.create!(yard_params)
    redirect_to yard
  end

  def edit
  end

  def update
    find_yard
    @yard.update!(yard_params)
    redirect_to @yard
  end

  private

  def yard_params
    params.require(:yard).permit(:title, :size, :cat_id)
  end

  def get_cats
    @cats = Cat.all
  end

  def find_yard
    @yard = Yard.find(params[:id])
  end
end