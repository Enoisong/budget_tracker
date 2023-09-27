FactoryBot.define do
  factory :category do
    user { FactoryBot.create(:user) }
    name { Faker::Commerce.department }
    icon { Faker::Internet.url }
  end
end
