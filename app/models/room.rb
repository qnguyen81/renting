# frozen_string_literal: true

class Room < ApplicationRecord
  belongs_to :listing
  has_many :listings
  validates :room_type, presence: true
end
