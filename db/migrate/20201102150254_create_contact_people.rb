class CreateContactPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_people do |t|
      t.string :English_Family_Name
      t.string :Chinese_Family_Name
      t.string :English_Given_Name
      t.string :Chinese_Given_Name
      t.string :English_Middle_Name

      t.timestamps
    end
  end
end
