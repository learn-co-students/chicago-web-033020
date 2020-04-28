class ShoesController < ApplicationController
  def show
    @shoe = Shoe.find(params[:id])
  end

  def new
    @shoe = Shoe.new
  end

  def create
    shoe = Shoe.create(params.require(:shoe).permit(:size, :color))
    puts "REDIRECTING!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    redirect_to shoe
  end
end
