FactoryBot.define do
  factory :shop do
    shop_name{ 'aa' }
    info { 'aa' }
    category_id { 2 }
    price_id { 2 }
    association :user

    after(:build) do |shop|
      shop.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
