# frozen_string_literal: true

class ListingsController < ApplicationController
  # def _listing
  #   @listings = Listing.all
  # end

  def show
    @listing = Listing.find(params[:id])
  end
end
