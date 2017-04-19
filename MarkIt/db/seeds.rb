# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(firstname: "Example",
             lastname: "User",
             username: "exampleuser0",
             email: "example@sample.edu",
             password: "password",
             password_confirmation: "password")

99.times do |n|
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  username = "exampleuser#{n+1}"
  email = "example-#{n+1}@sample.edu"
  password = "password"
  User.create!(firstname: firstname,
              lastname: lastname,
              username: username,
              email: email,
              password: password,
              password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.word
  description = Faker::Lorem.sentence(5)
  price = rand(1..100)
  users.each { |user| user.listings.create!(title: title, description: description, price: price) }
end
