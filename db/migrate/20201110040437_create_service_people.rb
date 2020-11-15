class CreateServicePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :service_people do |t|
      t.references :contact_person, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
