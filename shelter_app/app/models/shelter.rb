class Shelter < ApplicationRecord
    has_many :animals
    has_many :vet_charges
    has_many :veterinaries, through: :vet_charges, dependent: :destroy
    has_many :volunteerings
    has_many :users, through: :volunteerings, dependent: :destroy

    
end
