FactoryGirl.define do
  factory :request do
    pick_date { Faker::Date.backward }
    deliver_date { Faker::Date.forward }
    budget { Faker::Number.number(5) }
    # Is neccesary fix the creation of directions in nested params.
    #association :direction_to_deliver_id, factory: :direction
    #association :direction_to_pick_id_, factory: :direction
  end
end
