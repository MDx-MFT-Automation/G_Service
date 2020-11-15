json.extract! complaint_update, :id, :complaint_id, :Description, :complain_status_id, :Last_Updated_On, :created_at, :updated_at
json.url complaint_update_url(complaint_update, format: :json)
