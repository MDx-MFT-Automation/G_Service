class Instrument < ApplicationRecord
  belongs_to :material
  belongs_to :customer
  has_and_belongs_to_many :software_versions
  has_one :address
  has_many :work_orders
  has_many :service_contracts
  has_one :material_list

  def description
    "#{self.material.description} - Equipment:#{self.Equipment_Number})"
  end
end
