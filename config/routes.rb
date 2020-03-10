# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'hosts#index'
  resources :hosts, only: :show
  resources :listings, only: :show
  resources :locations, only: :show

  get '/search' => 'listings#_listing', :as => 'test'
end
