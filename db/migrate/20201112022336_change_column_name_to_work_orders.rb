class ChangeColumnNameToWorkOrders < ActiveRecord::Migration[6.0]
  def change
    change_table :work_orders do |t|
      t.rename :ShortDescription, :Short_Description
    end

  end
end
