# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    @locations = Location.all.page(params[:page]).per(35)
  end

  def show
    @location = Location.find(params[:id])
  end
end
