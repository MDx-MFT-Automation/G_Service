class CreateWorkOrderTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :work_order_types do |t|
      t.string :Work_Type_Name

      t.timestamps
    end
  end
end
