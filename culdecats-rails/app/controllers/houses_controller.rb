class HousesController < ApplicationController

  def new
    @house = House.new
    @house.yards.build([{},{},{}])
    @cat = Cat.find(params[:cat_id])
  end

  def create
    cat = Cat.find(params[:cat_id])
    house = cat.houses.new(house_params)
    p "*" * 75
    if house.save
      house.yards.update(cat_id: cat.id)
      redirect_to house_path(house)
    else
      p house.errors.full_messages
      redirect_to new_cat_house_path(cat)
    end

  end

  def show
    @house = House.find(params[:id])
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, yards_attributes: [:title, :size])
  end
end