class Complaint < ApplicationRecord
  belongs_to :complain_status
  has_many :complaint_updates

  def display_name
    
    "#{self.Short_Description}:#{self.SAP_Complaint_Notification_Number}"
        
    end
end
