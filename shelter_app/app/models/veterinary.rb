class Veterinary < ApplicationRecord
    has_many :vet_charges
    has_many :shelters, through: :vet_charges, dependent: :destroy

    has_many :Suffereded_diseases
end
