class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :City_Chinese_Name
      t.string :City_English_Name
      t.references :province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
