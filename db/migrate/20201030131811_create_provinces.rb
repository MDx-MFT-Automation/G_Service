class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :Province_Chinese_Name
      t.string :Province_English_Name

      t.timestamps
    end
  end
end
