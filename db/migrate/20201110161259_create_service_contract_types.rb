class CreateServiceContractTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :service_contract_types do |t|
      t.string :Name
      t.text :Description

      t.timestamps
    end
  end
end
