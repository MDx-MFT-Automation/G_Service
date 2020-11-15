class WorkOrderDuration < ApplicationRecord
  belongs_to :work_order
  belongs_to :work_order_duration_type
end
