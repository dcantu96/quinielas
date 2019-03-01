# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
    User.create(
    email: Faker::Internet.email, 
    password: 'password', 
    password_confirmation: 'password' 
    )
end
i = 1
5.times do
    Group.create name: Faker::FunnyName.name, user_id: i
    i = i + 1
end
