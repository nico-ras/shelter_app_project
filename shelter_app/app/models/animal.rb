class Animal < ApplicationRecord
  belongs_to :shelter
  belongs_to :rescued_from
  belongs_to :adopter, optional: true

  enum personality: [ 'verde', 'amarillo', 'rojo']
  enum condition: [ 'sano', 'enfermo', 'grave', 'preñada', 'con cachorros']
  enum sex: [ 'macho', 'hembra' ]

  scope :healthy, -> { where('condition = ?', 0)}

  scope :critical_ill, -> { where('condition = ?', 2)}

  scope :ill, -> { where('condition = ?', 1)}
  scope :adopted, -> { where(adopter_id: true)}

  
end
