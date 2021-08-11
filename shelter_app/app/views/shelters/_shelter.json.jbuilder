json.extract! shelter, :id, :name, :created_at, :updated_at
json.animals shelter.animals.count
json.adopted shelter.animals.adopted.count
json.not_adopted shelter.animals.not_adopted.count
json.url shelter_url(shelter, format: :json)