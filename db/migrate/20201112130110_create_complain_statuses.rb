class CreateComplainStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :complain_statuses do |t|
      t.string :Status

      t.timestamps
    end
  end
end
