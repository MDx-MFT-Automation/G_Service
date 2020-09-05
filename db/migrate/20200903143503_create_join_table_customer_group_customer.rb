class CreateJoinTableCustomerGroupCustomer < ActiveRecord::Migration[6.0]
  def change
    create_join_table :customer_groups, :customers do |t|
      # t.index [:customer_group_id, :customer_id]
      # t.index [:customer_id, :customer_group_id]
    end
  end
end
