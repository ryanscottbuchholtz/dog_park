require 'spec_helper'

describe OwnersPet do
  
  describe 'validations' do

  it { should have_valid(:owner).when(Owner.new) }
  it { should_not have_valid(:owner).when(nil) }

  it { should have_valid(:pet).when(Pet.new) }
  it { should_not have_valid(:pet).when(nil) }

  end
end
