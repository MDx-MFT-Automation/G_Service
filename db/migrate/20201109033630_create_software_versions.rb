class CreateSoftwareVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :software_versions do |t|
      t.string :Software_Name
      t.string :Version_Number

      t.timestamps
    end
  end
end
