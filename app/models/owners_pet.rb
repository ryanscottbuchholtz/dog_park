class OwnersPet < ActiveRecord::Base
  validates_presence_of :owner 
  validates_presence_of :pet 

  belongs_to :owner, 
    inverse_of: :owners_pets
  belongs_to :pet,
    inverse_of: :owners_pets
end
