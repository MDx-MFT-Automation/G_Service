class WorkOrderDurationType < ApplicationRecord
    def description
        "#{self.SAP_Description}(#{self.SAP_Code}:#{self.SAP_Material_Number})"
    end
end
