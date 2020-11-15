class AddInstrumentRefToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :instrument, foreign_key: true
  end
end
