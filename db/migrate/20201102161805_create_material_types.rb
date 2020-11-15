class CreateMaterialTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :material_types do |t|
      t.string :Material_Number
      t.text :Description_English
      t.text :Description_Chinese
      t.references :manufacturer, null: false, foreign_key: true
      t.float :Price_CLP_RMB
      t.float :Price_CLP_USD
      t.float :Price_GBP_USD

      t.timestamps
    end
  end
end
