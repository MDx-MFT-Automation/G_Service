class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :city, null: false, foreign_key: true
      t.string :Address_English
      t.string :Address_Chinese

      t.timestamps
    end
  end
end
