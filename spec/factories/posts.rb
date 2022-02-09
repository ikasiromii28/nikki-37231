FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.sentence }
    mood_id    { Faker::Number.between(from: 2, to: 10) }
    weather_id { Faker::Number.between(from: 2, to: 6) }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
