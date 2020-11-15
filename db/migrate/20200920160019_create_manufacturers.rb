class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.string :English_Name
      t.string :Chinese_Name

      t.timestamps
    end
  end
end
