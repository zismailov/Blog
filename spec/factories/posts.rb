FactoryGirl.define do
  factory :post do
    
    title "My post title!"
    content "Falos kurwa, jebani enot"
    user

    trait :title_nil do
      title nil
    end

    trait :content_nil do
      content nil
    end

  end
end
