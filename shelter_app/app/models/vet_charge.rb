class VetCharge < ApplicationRecord
  belongs_to :veterinary
  belongs_to :shelter
end
