json.extract! service_contract, :id, :instrument_id, :SAP_ServiceContract_Number, :Start_Date, :End_Date, :service_contract_type_id, :price, :Comment, :created_at, :updated_at
json.url service_contract_url(service_contract, format: :json)
