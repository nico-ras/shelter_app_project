json.extract! animal, :id, :name, :entry_at, :condition, :personality, :age, :sex, :color, :chip, :hosted_in, :observations, :shelter_id, :rescued_from_id, :adopter_id, :created_at, :updated_at
json.url animal_url(animal, format: :json)
