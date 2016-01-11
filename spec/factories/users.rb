FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person_#{n}@example.com"}
    password 'password'

    trait :admin do
      role 'admin'
    end
  end
end
