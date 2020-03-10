# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'listings#_listing'
  resources :hosts
  resources :listings
  resources :locations

  get '/search' => 'listing#_Listing', :as => 'search_page'
end
