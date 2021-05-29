class CreateStorageLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :storage_locations do |t|
      t.string :storage_location_name
      t.text :storage_location_description
      t.text :actual_location

      t.timestamps
    end
  end
end
