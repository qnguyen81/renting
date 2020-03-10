# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'hosts#index'
  resources :hosts, shallow: true
  resources :listings, shallow: true
  resources :locations, shallow: true

  resources :hosts do
    resources :listings
  end

  get '/hosts/:id/:name' => 'hosts#show', as: 'test'
  get '/search' => 'listings#_listing', :as => 'test1'
  get '/hosts' => 'hosts#index'
  get '/listings' => 'listings#_listing'
end
