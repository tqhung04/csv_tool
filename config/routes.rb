Rails.application.routes.draw do
  resources :csv_operators
  resources :csv_attribute_filters
  resources :projects do
    resources :csv_types do
      resources :csv_attributes do
        resources :csv_filters
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
