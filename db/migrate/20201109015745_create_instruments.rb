class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.references :material, null: false, foreign_key: true
      t.string :Equipment_Number
      t.text :commont

      t.timestamps
    end
  end
end
