class Location < ApplicationRecord
  belongs_to :listing
  has_many :listings
  validates :area, presence: true
end
