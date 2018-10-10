require 'rails_helper'
describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:user_name)}
  end

  describe 'Relationships' do
    it { should have_many(:reviews)}
  end
end
