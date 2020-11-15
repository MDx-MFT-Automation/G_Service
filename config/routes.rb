Rails.application.routes.draw do
  resources :complaint_updates
  resources :complaints
  resources :complain_statuses
  resources :service_contracts
  resources :service_contract_types
  resources :work_order_durations
  resources :work_order_duration_types
  resources :work_orders
  resources :work_order_statuses
  resources :work_order_types
  resources :service_people
  resources :software_versions
  resources :instruments
  resources :product_lines
  resources :emails
  resources :materials
  resources :material_types
  resources :phones
  resources :contact_people
  resources :addresses
  resources :cities
  resources :provinces
  resources :manufacturers
  resources :customer_groups
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	
  resources :customers do
    resources :updates
  end
  root 'welcome#index'
	
end
