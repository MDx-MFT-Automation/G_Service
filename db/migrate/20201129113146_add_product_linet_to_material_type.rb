class AddProductLinetToMaterialType < ActiveRecord::Migration[6.0]
  def change
    add_reference :material_types, :product_line, foreign_key: true
  end
end
