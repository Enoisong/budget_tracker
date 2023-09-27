require 'rails_helper'

RSpec.describe Bill, type: :model do
  subject { build(:bill) }

  context 'validations' do
    it 'is valid with valid attributes' do
      user = create(:user)
      subject.author = user
      expect(subject).to be_valid
    end

    it 'should not be valid without name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have amount with an integer value' do
      subject.amount = 'abc'
      expect(subject).to_not be_valid
    end
  end
end
