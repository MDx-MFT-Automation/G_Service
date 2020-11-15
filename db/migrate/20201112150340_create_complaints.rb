class CreateComplaints < ActiveRecord::Migration[6.0]
  def change
    create_table :complaints do |t|
      t.string :SAP_Complaint_Notification_Number
      t.string :Short_Description
      t.references :complain_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
