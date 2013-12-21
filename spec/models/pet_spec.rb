require 'spec_helper'

describe Pet do
  describe 'validations' do

    it { should have_valid(:name).when('Dexter', 'Rover') }
    it { should_not have_valid(:name).when('', nil) }

    it { should have_many :owners }

  end
end
