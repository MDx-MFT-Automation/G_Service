class CreateComplaintUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :complaint_updates do |t|
      t.references :complaint, null: false, foreign_key: true
      t.text :Description
      t.references :complain_status, foreign_key: true
      t.datetime :Last_Updated_On

      t.timestamps
    end
  end
end
