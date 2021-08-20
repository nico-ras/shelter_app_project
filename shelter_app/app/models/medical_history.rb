class MedicalHistory < ApplicationRecord
  belongs_to :animal
  has_many :suffereded_diseases
end
