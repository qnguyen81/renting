# frozen_string_literal: true

class ListingsController < ApplicationController
  def index
    @listings = Listing.all.page(params[:page]).per(35)
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
