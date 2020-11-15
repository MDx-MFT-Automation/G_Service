class AddDescriptionToComplaints < ActiveRecord::Migration[6.0]
  def change
    add_column :complaints, :Description, :text
  end
end
