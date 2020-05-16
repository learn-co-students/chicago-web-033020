class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species
  # belongs_to :species


  def species
    @object.species.name
  end
end
