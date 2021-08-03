class RescuedFrom < ApplicationRecord
  belongs_to :location
  has_one :animal
end
