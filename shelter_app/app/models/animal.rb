class Animal < ApplicationRecord
  belongs_to :shelter
  belongs_to :rescued_from
  belongs_to :adopter, optional: true
  has_one :medical_history

  enum personality: [ 'sociable', 'domestico', 'feral']
  enum condition: [ 'sano', 'enfermo', 'grave', 'preñada', 'con cachorros']
  enum sex: [ 'macho', 'hembra' ]

  

  scope :healthy, -> { where('condition = ?', 0)}

  scope :critical_ill, -> { where('condition = ?', 2)}

  scope :ill, -> { where('condition = ?', 1)}

  scope :adopted, -> { where(adopter_id: true)}
  scope :not_adopted, -> { where(adopter_id: nil)}
  

  ransacker :id do
    Arel.sql("to_char(\"#{table_name}\".\"id\", '99999')")
  end

  

end
