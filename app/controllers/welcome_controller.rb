# frozen_string_literal: true

class WelcomeController < ApplicationController
  def show; end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
      @parameter = params[:search].downcase
      @results = Host.where('lower(name) LIKE :search', search: @parameter)
    end
  end
end
