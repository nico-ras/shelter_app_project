# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# users = [
#     { email: 'cristobal@example.com', name: 'Cristobal', lastname: 'Dominguez', nickname: 'cristobaldominguez', password: 123123, profile: 'cd.jpg', cover: 'cover_04.jpg', landscapes: 5 },
#     { email: 'admin@example.com', name: 'Desafío', lastname: 'Latam', nickname: 'elliot', password: 123456, profile: 'elliot.jpg', cover: 'mr_robot_cover.jpeg', landscapes: 3 },
#     { email: 'margot@example.com', name: 'Margot', lastname: 'Robbie', nickname: 'margotrobbie', password: 123456, profile: 'margot.jpg', cover: 'cover_01.jpg', landscapes: 3 },
#     { email: 'ryan@example.com', name: 'Ryan', lastname: 'Reynolds', nickname: 'ryanreynolds', password: 123456, profile: 'ryan.jpg', cover: 'cover_05.jpg', landscapes: 3 },
#     { email: 'barack@example.com', name: 'Barack', lastname: 'Obama', nickname: 'barackobama', password: 123456, profile: 'barack.jpg', cover: 'cover_03.jpg', landscapes: 3 },
#     { email: 'michael@example.com', name: 'Michael', lastname: 'Jackson', nickname: 'michaeljackson', password: 123456, profile: 'michael.jpg', cover: 'cover_06.jpg', landscapes: 3 },
#     { email: 'bruce@example.com', name: 'Bruce', lastname: 'Willis', nickname: 'brucewillis', password: 123456, profile: 'bruce.jpg', cover: 'cover_02.jpg', landscapes: 3 }
# ]
# ​
# puts 'Creating Users'
# users.each do |user|
#     current_user = User.create!(
#         email: user[:email],
#         name: user[:name],
#         lastname: user[:lastname],
#         nickname: user[:nickname],
#         password: user[:password]
#     )
#     current_user.profile.attach(io: File.open("app/assets/images/profiles/#{user[:profile]}"), filename: user[:profile])
# ​
#     puts "se ha creado el usuario: #{current_user.name} #{current_user.lastname}"
# end