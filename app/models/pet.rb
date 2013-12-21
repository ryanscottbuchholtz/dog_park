class Pet < ActiveRecord::Base
  validates_presence_of :name

  has_many :owners_pets,
    inverse_of: :Pet

  has_many :owners,
    through: :owners_pets,
    inverse_of: :pet 
end
