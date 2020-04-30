class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
    @dog.toys.build([{},{}])
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to @dog
    else
      render :new
    end
  end

  private

  def dog_params
    p params
    params.require(:dog).permit(:name, :breed, :age, toys_attributes: [:name, :color])
  end
end
