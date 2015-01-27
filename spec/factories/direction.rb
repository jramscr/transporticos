FactoryGirl.define do
  factory :direction do
    description { Faker::Lorem.sentence }
    association :province, factory: :province
    association :township, factory: :township
    association :district, factory: :district
  end
end
