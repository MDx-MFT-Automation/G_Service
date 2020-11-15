json.extract! complaint, :id, :SAP_Complaint_Notification_Number, :Short_Description, :complain_status_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
