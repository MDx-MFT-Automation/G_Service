class AddWorkOrderShortDescriptionToWorkOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :work_orders, :ShortDescription, :string
  end
end
