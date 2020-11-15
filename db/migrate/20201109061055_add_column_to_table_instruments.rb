class AddColumnToTableInstruments < ActiveRecord::Migration[6.0]
  def change
    add_reference :instruments, :customer, foreign_key: true
  end
end
