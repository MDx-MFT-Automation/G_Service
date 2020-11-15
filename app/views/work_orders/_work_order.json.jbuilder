json.extract! work_order, :id, :SAP_WorkOrder_Number, :ServiceMax_WorkOrder_Number, :instrument_id, :customer_id, :service_person_id, :details, :work_order_status_id, :Cost_SAP, :Cost_ServiceMax, :created_at, :updated_at
json.url work_order_url(work_order, format: :json)
