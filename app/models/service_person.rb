class ServicePerson < ApplicationRecord
  belongs_to :contact_person

  def display_name
    "#{self.contact_person.display_name}"
  end
end
