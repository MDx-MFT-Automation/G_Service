Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	
  resources :customers do
    resources :updates
  end
  root 'welcome#index'
	
end
