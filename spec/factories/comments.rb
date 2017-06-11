FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.sentence }
    post
    user
  end
end
