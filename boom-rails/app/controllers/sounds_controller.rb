class SoundsController < ApplicationController

  def index
    @sounds = Sound.all
  end

  def show
    p params
    @sound = Sound.find(params[:id])
  end
end
