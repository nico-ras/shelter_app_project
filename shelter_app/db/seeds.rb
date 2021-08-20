# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all
Veterinary.destroy_all
RescuedFrom.destroy_all
Location.destroy_all
Shelter.destroy_all 
User.destroy_all


users = [{email: 'admin@admin.com', nickname: 'admin', password: 123456, admin: true, editor: true}, {email: 'user2@user.com', nickname: 'user2', password: 123456, admin: false, editor: true}, {email: 'user3@user.com', nickname: 'user3', password: 123456, admin: false, editor: false}, {email: 'user4@user.com', nickname: 'user4', password: 123456, admin: false, editor: false}, {email: 'user5@user.com', nickname: 'user5', password: 123456, admin: false, editor: false}]

shelter = Shelter.create!(name: 'El Gatil')

veterinaries = [{first_name: 'Sixto', last_name: 'Rodriguez'}, {first_name: 'Robert', last_name: 'Smith'}]

users.each do |user|
    current_user = shelter.users.create!(email: user[:email], nickname: user[:nickname], password: user[:password], admin: user[:admin], editor: user[:editor])

    puts "se ha creado el usuario: #{current_user.email}, con nickname: #{current_user.nickname}"
end   

veterinaries.each do |vet|
    current_vet = shelter.veterinaries.create!(first_name: vet[:first_name],last_name: vet[:last_name])

    puts "se ha creado el veterinario: #{current_vet.first_name} #{current_vet.last_name} "
end

20.times do
   
    location = Location.create!(county: Faker::Address.community)
    
    puts "Se ha creado la locacion: #{location.county}"
    
    
    10.times do
       
        rescued_from = location.rescued_froms.create!(date: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), address: Faker::Address.street_address, observations: Faker::Lorem.paragraph)

        shelter.animals.create!(name: Faker::Creature::Dog.name, age: rand(1..18), sex: rand(0..1), color: Faker::Color.color_name, entry_at: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), condition: rand(0..4), personality: rand(0..2), chip: rand(10**10), hosted_in: 'canil ' + rand(0..10).to_s, observations: Faker::Lorem.paragraph, rescued_from_id: rescued_from.id)

        

    
    end

end
    


  



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