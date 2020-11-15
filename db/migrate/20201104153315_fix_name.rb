class FixName < ActiveRecord::Migration[6.0]
  def change
    rename_column :materials, :Material_Type_id, :material_type_id
  end
end
