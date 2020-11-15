class MaterialType < ApplicationRecord
  belongs_to :manufacturer
  has_many :materials
  has_and_belongs_to_many :product_lines
end
