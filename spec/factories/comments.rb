FactoryGirl.define do
  factory :comment do
    content "MyText Comment"
    post
    user
  end
end
