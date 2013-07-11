# try with :user & then :users for the set of users...
FactoryGirl.define do
=begin
  factory :user do
    name     "J. Random User"
    email    "jrandom@talkvite.com"
    password "foobar"
    password_confirmation "foobar"
  end
=end
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@talkvite.com" }
    password 'foobar'
    password_confirmation 'foobar'

    factory :admin do
      admin true
    end
  end
end
