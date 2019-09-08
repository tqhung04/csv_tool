# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :projects
  resources :filters
  resources :data_types
  resources :csv_models
  resources :csv_attribute_filters
  resources :csv_attributes
end
