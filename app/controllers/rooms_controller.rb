# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    @rooms = Room.all.page(params[:page]).per(35)
  end

  def show
    @room = Room.find(params[:id])
  end
end
