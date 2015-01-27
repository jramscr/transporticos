FactoryGirl.define do
  factory :province do
    name { Faker::Address.city }
  end
end
