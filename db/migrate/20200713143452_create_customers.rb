class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :English_name
      t.string :Chinese_name
      t.text :description

      t.timestamps
    end
  end
end
