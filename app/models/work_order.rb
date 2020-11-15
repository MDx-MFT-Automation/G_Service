class WorkOrder < ApplicationRecord
  belongs_to :instrument
  belongs_to :customer
  belongs_to :service_person
  belongs_to :work_order_status
  has_many :work_order_durations

  def display_number
    "#{self.SAP_WorkOrder_Number}:#{self.ServiceMax_WorkOrder_Number}"
  end
end
