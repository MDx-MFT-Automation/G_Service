class Material < ApplicationRecord
  belongs_to :material_type

  def description
    "#{self.material_type.Description_English} - #{self.material_type.Material_Number}:(#{self.Lot_Or_Serial_Number})"
  end
end
