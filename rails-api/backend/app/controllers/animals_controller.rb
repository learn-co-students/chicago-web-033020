class AnimalsController < ApplicationController
  def index
    animals = Animal.all
    render json: animals
  end

  def create
    puts params
    puts '================================================'
    species = Species.find_or_create_by(name: params[:species])
    animal = Animal.create(name: params[:name], gender: params[:gender].to_i, species_id: species.id)


    render json: animal

    # find or create a species based on the name in the params
    # create the new animal and associate it with the species that i just found
    #
    # redner json of the animal
  end
end
