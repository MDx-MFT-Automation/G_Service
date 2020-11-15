class CreateJoinTableContacPerCustomer < ActiveRecord::Migration[6.0]
  def change
    create_join_table :contact_people, :customers do |t|
      # t.index [:contact_person_id, :customer_id]
      # t.index [:customer_id, :contact_person_id]
    end
  end
end
