class Room < ApplicationRecord
  belongs_to :listing

  validates :type, presence: true
end
