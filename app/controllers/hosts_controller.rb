# frozen_string_literal: true

class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:name])
  end
end
