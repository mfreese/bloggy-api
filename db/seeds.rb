# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  users = 50.times.collect do
    User.create!(
      name: Faker::Name.name,
      bio: "Hey. My bio",
      password: Faker::Internet.password,
      email: Faker::Internet.email
    )
  end
