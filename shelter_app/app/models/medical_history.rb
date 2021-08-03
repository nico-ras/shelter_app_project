class MedicalHistory < ApplicationRecord
  belongs_to :animal
  has_many :Suffereded_diseases
end
