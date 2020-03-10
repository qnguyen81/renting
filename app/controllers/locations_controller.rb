# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    @locations = Location.all.page(params[:page]).per(35)
  end

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
end
