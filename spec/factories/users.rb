FactoryGirl.define do
  factory :user do
    name { FFaker::Name.name}
    email { FFaker::Internet.email }
    password '12345678'
    auth_token { Devise.friendly_token }
  end
end
