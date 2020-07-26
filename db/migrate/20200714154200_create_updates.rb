class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.text :comment
      t.references :customer, null: false, foreign_key: true
      t.datetime :update_time
      t.datetime :happened_time

      t.timestamps
    end
  end
end
