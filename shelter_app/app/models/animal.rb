class Animal < ApplicationRecord
  belongs_to :shelter
  belongs_to :rescued_from
  belongs_to :adopter, optional: true

  enum personality: [ 'verde', 'amarillo', 'rojo']
  enum condition: [ 'sano', 'enfermo', 'grave']
  enum sex: [ 'macho', 'hembra' ]
  
end
