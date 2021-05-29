class Material < ApplicationRecord
  belongs_to :material_type
  has_one :instrument
  belongs_to :storage_location

  def description
    "#{self.material_type.Description_English} - #{self.material_type.Material_Number}:(#{self.Lot_Or_Serial_Number})"
  end
end
