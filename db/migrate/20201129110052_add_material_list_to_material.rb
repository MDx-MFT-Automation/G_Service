class AddMaterialListToMaterial < ActiveRecord::Migration[6.0]
  def change
    add_reference :materials, :material_list, foreign_key: true
  end
end
