FactoryGirl.define do
  factory :user do
    email { Faker::Internet.free_email }
    password 'mudanzas'
    name { Faker::Name.name }
    first_surname { Faker::Name.last_name }
    second_surname { Faker::Name.last_name }
    mobile_phone { Faker::Number.number(8) }
    carrier false

    trait :carrier do
      carrier true
    end
  end
end
