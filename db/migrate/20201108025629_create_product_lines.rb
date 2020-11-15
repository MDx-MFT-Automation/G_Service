class CreateProductLines < ActiveRecord::Migration[6.0]
  def change
    create_table :product_lines do |t|
      t.string :Product_Name
      t.string :Product_Full_Name

      t.timestamps
    end
  end
end
