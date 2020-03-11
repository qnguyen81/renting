# frozen_string_literal: true

class Listing < ApplicationRecord
  belongs_to :host
  has_many :locations
  has_many :rooms
end
