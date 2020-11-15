class ComplaintUpdate < ApplicationRecord
  belongs_to :complaint
  belongs_to :complain_status
end
