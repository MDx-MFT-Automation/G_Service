class CreateWorkOrderStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :work_order_statuses do |t|
      t.string :Status

      t.timestamps
    end
  end
end
