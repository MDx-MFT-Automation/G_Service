class CreateMaterialLists < ActiveRecord::Migration[6.0]
  def change
    create_table :material_lists do |t|
      t.references :instrument, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
