class Shelter < ApplicationRecord
    has_many :animals
    has_many :vet_charges
    has_many :veterinaries, through: :vet_charges, dependent: :destroy
end
