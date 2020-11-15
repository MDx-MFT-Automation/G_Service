class ComplainStatus < ApplicationRecord
    def display_name
    
    "#{self.Short_Description}:#{self.SAP_Complaint_Notification_Number}"
        
    end
end
