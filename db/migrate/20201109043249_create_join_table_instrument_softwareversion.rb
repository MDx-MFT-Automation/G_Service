class CreateJoinTableInstrumentSoftwareversion < ActiveRecord::Migration[6.0]
  def change
    create_join_table :instruments, :software_versions do |t|
      # t.index [:instrument_id, :software_version_id]
      # t.index [:software_version_id, :instrument_id]
    end
  end
end
