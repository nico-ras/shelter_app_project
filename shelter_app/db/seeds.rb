# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Procedure.destroy_all
Treatment.destroy_all
SufferededDisease.destroy_all
MedicalHistory.destroy_all
Animal.destroy_all
Veterinary.destroy_all
RescuedFrom.destroy_all
Location.destroy_all
Shelter.destroy_all 
User.destroy_all


users = [{email: 'admin@admin.com', nickname: 'admin', password: 123456, admin: true, editor: true}, {email: 'user2@user.com', nickname: 'user2', password: 123456, admin: false, editor: true}, {email: 'user3@user.com', nickname: 'user3', password: 123456, admin: false, editor: false}, {email: 'user4@user.com', nickname: 'user4', password: 123456, admin: false, editor: false}, {email: 'user5@user.com', nickname: 'user5', password: 123456, admin: false, editor: false}]

shelter = Shelter.create!(name: 'El Gatil')

veterinaries = [{first_name: 'Sixto', last_name: 'Rodriguez'}, {first_name: 'Robert', last_name: 'Smith'}]

disease_names = ['Otitis', 'Conjuntivitis', 'Rabia', 'Leucemia felina', 'Panleucopenia felina', 'Inmunodeficiencia felina', 'Peritonitis', 'Problemas gastrointestinales']

disease_ids = []

disease_names.each do |d|

    disease = Disease.create!(name: d, description: Faker::Lorem.paragraph)

    disease_ids << disease.id

end    

users.each do |user|
    current_user = shelter.users.create!(email: user[:email], nickname: user[:nickname], password: user[:password], admin: user[:admin], editor: user[:editor])

    puts "se ha creado el usuario: #{current_user.email}, con nickname: #{current_user.nickname}"
end   

vet_ids = []

veterinaries.each do |vet|
    current_vet = shelter.veterinaries.create!(first_name: vet[:first_name],last_name: vet[:last_name])

    puts "se ha creado el veterinario: #{current_vet.first_name} #{current_vet.last_name} "

    vet_ids << current_vet.id
end

treatment_types = ['Vacunas', 'Control', 'Medicamentos', 'Examenes']

10.times do
   
    location = Location.create!(county: Faker::Address.community)
    
    puts "Se ha creado la locacion: #{location.county}"
    
    #animales sin historial de enfermedades y sin adoptantes

    # 10.times do
       
    #     rescued_from = location.rescued_froms.create!(date: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), address: Faker::Address.street_address, observations: Faker::Lorem.paragraph)

    #     animal = shelter.animals.create!(name: Faker::Creature::Dog.name, age: rand(1..18), sex: rand(0..1), color: Faker::Color.color_name, entry_at: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), condition: rand(0..4), personality: rand(0..2), chip: rand(7**7), hosted_in: 'canil ' + rand(0..10).to_s, observations: Faker::Lorem.paragraph, rescued_from_id: rescued_from.id)

    #     medical_record = MedicalHistory.create!(animal_id: animal.id)

    
    # end

    #animales con historial de enfermedades

    


          10.times do
       
            rescued_from = location.rescued_froms.create!(date: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), address: Faker::Address.street_address, observations: Faker::Lorem.paragraph)
    
            animal = shelter.animals.create!(name: Faker::Creature::Dog.name, age: rand(1..18), sex: rand(0..1), color: Faker::Color.color_name, entry_at: Faker::Date.between_except(from: 3.year.ago, to: 1.year.from_now, excepted: Date.today), condition: rand(0..4), personality: rand(0..2), chip: rand(7**7), hosted_in: 'canil ' + rand(0..10).to_s, observations: Faker::Lorem.paragraph, rescued_from_id: rescued_from.id)
    
            medical_record = MedicalHistory.create!(animal_id: animal.id)

               rand(0..2).times do

                  suffereded_disease = medical_record.suffereded_diseases.create!(started_at: Faker::Date.between_except(from: 6.month.ago, to: 6.month.from_now, excepted: Date.today), discharged: [true, false].sample, disease_id: disease_ids.sample, veterinary_id: vet_ids.sample)

                    rand(0..2).times do
                      treatment = suffereded_disease.treatments.create!(treatment_type: treatment_types.sample, observation: Faker::Lorem.paragraph, cost: rand(100..1000000))

                        rand(0..3).times do
                            treatment.procedures.create!(date: Faker::Date.between_except(from: 2.month.ago, to: 2.month.from_now, excepted: Date.today), note: Faker::Lorem.paragraph, done: [true, false].sample)
                        end

                      
                    end

               end
    
    
    
        
        end
    

    

end
    


  



