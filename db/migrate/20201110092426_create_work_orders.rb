class CreateWorkOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :work_orders do |t|
      t.string :SAP_WorkOrder_Number
      t.string :ServiceMax_WorkOrder_Number
      t.references :instrument, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :service_person, null: false, foreign_key: true
      t.text :details
      t.references :work_order_status, null: false, foreign_key: true
      t.float :Cost_SAP
      t.float :Cost_ServiceMax

      t.timestamps
    end
  end
end
