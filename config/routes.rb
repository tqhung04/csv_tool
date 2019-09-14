Rails.application.routes.draw do
  resources :csv_attribute_filters
  resources :csv_filters
  resources :csv_attributes
  resources :csv_types
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
