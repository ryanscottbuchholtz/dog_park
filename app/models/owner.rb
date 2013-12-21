class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_address
  
  validates_uniqueness_of :email_address, :case_sensitive => false, :on => :create, :on => :update, :on => :save
  
  validates_format_of :email_address, :with => /.+@.+\..+/i

  has_many :owners_pets,
    inverse_of: :owner 

  has_many :pets,
    through: :owners_pets,
    inverse_of: :owner

end
