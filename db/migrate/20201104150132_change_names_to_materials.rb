class ChangeNamesToMaterials < ActiveRecord::Migration[6.0]
  def change
    remove_index :materials, :Material_Type_id, :material_type_id

  end
end
