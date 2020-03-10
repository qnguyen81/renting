# frozen_string_literal: true

class ListingsController < ApplicationController
  def _listing
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
      @parameter = params[:search].downcase
      @results = Store.all.where('lower(name) LIKE :search', search: @parameter)
    end
  end
end
