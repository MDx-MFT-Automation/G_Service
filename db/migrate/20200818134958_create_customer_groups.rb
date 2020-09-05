class CreateCustomerGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_groups do |t|
      t.string :Customer_Group__Name_English
      t.string :Customer_Group__Name_Chinese

      t.timestamps
    end
  end
end
