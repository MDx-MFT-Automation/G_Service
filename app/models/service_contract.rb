class ServiceContract < ApplicationRecord
  belongs_to :instrument
  belongs_to :service_contract_type
end
