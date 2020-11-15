class CreateJoinTableProductLineMaterialType < ActiveRecord::Migration[6.0]
  def change
    create_join_table :product_lines, :material_types do |t|
      # t.index [:product_line_id, :material_type_id]
      # t.index [:material_type_id, :product_line_id]
    end
  end
end
