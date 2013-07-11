# namespace is responsible for the 'db' in 'db:populate', populate for the 'populate'
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "P. D. Q. Bach",
                 email: "example@talkvite.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@talkvite.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
