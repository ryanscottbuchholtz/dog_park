require 'spec_helper'

describe Owner do
  let(:blank) { [' ', nil] }
  let(:invalid_email) { ['@me.com', 'ryan.com', 'ryan@.com', 'ryan@me'] }

  describe 'validations' do
    it { should have_valid(:first_name).when('Ryan', 'Scott', 'Mark') }
    it { should_not have_valid(:first_name).when(*blank) }

    it { should have_valid(:last_name).when('Buchholtz') }
    it { should_not have_valid(:last_name).when(*blank) }

    it { should have_valid(:email_address).when('ryan@monkey.com') }
    it { should_not have_valid(:email_address).when(*invalid_email) }

  end


end
