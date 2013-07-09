FactoryGirl.define do
  factory :user do
    name     "J. Random User"
    email    "jrandom@talkvite.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
