class CreateWorkOrderDurationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :work_order_duration_types do |t|
      t.string :SAP_Material_Number
      t.string :SAP_Code
      t.string :SAP_Description
      t.string :ServiceMax_Description

      t.timestamps
    end
  end
end
