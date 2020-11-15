class CreateServiceContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :service_contracts do |t|
      t.references :instrument, null: false, foreign_key: true
      t.string :SAP_ServiceContract_Number
      t.date :Start_Date
      t.date :End_Date
      t.references :service_contract_type, null: false, foreign_key: true
      t.float :price
      t.text :Comment

      t.timestamps
    end
  end
end
