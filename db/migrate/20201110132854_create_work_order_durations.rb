class CreateWorkOrderDurations < ActiveRecord::Migration[6.0]
  def change
    create_table :work_order_durations do |t|
      t.references :work_order, null: false, foreign_key: true
      t.references :work_order_duration_type, null: false, foreign_key: true
      t.float :Actual_Time
      t.datetime :Actual_Start_Date
      t.datetime :Actual_End_Date
      t.text :Description

      t.timestamps
    end
  end
end
