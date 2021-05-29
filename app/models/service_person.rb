class ServicePerson < ApplicationRecord
  belongs_to :contact_person
  has_many :work_orders 

  def display_name
    "#{self.contact_person.display_name}"
  end
end
