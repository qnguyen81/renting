class Listing < ApplicationRecord
  belongs_to :host
  has_many :locations
end
