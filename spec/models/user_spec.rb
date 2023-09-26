require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  context 'validations' do
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'should not be valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
