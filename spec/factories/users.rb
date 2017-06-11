FactoryGirl.define do
  factory :user do

    name  { Faker::Name.name }
    email { Faker::Internet.email }
    password "password123"

    trait :admin do
      role 'admin'
    end

    confirmed_at Time.now

    trait :unconfirmed_user do
      confirmed_at nil
    end

  end
end
