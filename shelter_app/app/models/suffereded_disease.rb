class SufferededDisease < ApplicationRecord
  belongs_to :disease
  belongs_to :medical_history
  belongs_to :veterinary, optional: true
  has_many :treatments
end
