class MaterialList < ApplicationRecord
  belongs_to :instrument
  has_many :materials
end
