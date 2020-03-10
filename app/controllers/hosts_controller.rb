# frozen_string_literal: true

class HostsController < ApplicationController
  def index
    @hosts = Host.all.page(params[:page]).per(35)
  end

  def show
    @host = Host.find(params[:id])
    @test = Host.where(name: 'john')
  end
end
