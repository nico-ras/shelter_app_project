class Volunteering < ApplicationRecord
  belongs_to :user
  belongs_to :shelter
end
