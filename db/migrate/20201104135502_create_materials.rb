class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.references :Material_Type, null: false, foreign_key: true
      t.string :Lot_Or_Serial_Number
      t.date :Manufacture_Date
      t.date :Expiration_Date
      t.text :Comment

      t.timestamps
    end
  end
end
