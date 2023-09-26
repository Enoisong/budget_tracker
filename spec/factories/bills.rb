FactoryBot.define do
  factory :bill do
    association :author, factory: :user

    name { Faker::Name.name }
    amount { Faker::Number.within(range: 1..1000) }
  end
end
