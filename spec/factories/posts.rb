FactoryGirl.define do
  factory :post do

    title   { Faker::Name.title }
    content { Faker::Lorem.paragraph }
    user

    trait :title_nil do
      title nil
    end

    trait :content_nil do
      content nil
    end

  end
end
