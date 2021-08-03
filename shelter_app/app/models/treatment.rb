class Treatment < ApplicationRecord
  belongs_to :suffereded_disease
  has_many :procedures
end
