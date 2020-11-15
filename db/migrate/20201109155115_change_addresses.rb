class ChangeAddresses < ActiveRecord::Migration[6.0]
  def change
    change_table :addresses do |t|
      t.remove :addressable_type, :addressable_id
    end
  end
end
