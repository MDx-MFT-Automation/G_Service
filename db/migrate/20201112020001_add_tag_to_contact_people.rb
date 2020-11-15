class AddTagToContactPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_people, :tag, :string
  end
end
