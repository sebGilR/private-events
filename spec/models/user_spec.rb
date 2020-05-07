require 'rails_helper'

RSpec.describe User, type: :model do
  let!('user') { User.new(name: 'User', email: 'Email') }
  describe 'create' do
    it 'creates a new user object when input is valid' do
      expect(user).to be_a_new(User)
    end
  end
end
