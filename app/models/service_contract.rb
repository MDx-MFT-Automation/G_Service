class ServiceContract < ApplicationRecord
  belongs_to :instrument
  belongs_to :service_contract_type

  def description
    
    "#{self.SAP_ServiceContract_Number}: #{self.Start_Date} - #{self.End_Date} (#{self.service_contract_type.Name})"
    
end
end
