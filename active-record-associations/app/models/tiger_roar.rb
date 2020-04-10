class TigerRoar < ActiveRecord::Base
  belongs_to :roar
  belongs_to :tiger
  # Belongs To Assumptions:
    # - name of the associaton is an actual table / model
    # - this class has a foreign key to that table called :association_name_id


  # def tiger
  #   Tiger.find(self.tiger_id)
  # end

  # def tiger=(new_tiger)
  #   self.tiger_id = new_tiger.id
  # end
end