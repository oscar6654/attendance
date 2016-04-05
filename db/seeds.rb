# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

#Create test user
test = User.new(
  name: 'Test User',
  email: 'test@example.com',
  password: 'helloworld'
  )

test.skip_confirmation!
test.save
