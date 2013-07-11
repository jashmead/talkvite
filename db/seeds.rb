# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{name: 'John Ashmead', email: 'john.ashmead@talkvite.com', password: 'E@gl3t6', password_confirmation: 'E@gl3t6'}]);
User.create([{name: 'J. Random User', email: 'jruser@talkvite.com', password: 'foobar', password_confirmation: 'foobar'}]);
