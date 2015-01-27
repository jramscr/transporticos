FactoryGirl.define do
  factory :township do
    email { Faker::Address.city }
  end
end
