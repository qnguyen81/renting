# frozen_string_literal: true

class HostsController < ApplicationController
  def index
    @hosts = Host.all.order(:name)
  end
end
