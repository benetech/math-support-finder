FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
  end
  factory :admin do
    email { Faker::Internet.email }
    role "admin"
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
  end
end
