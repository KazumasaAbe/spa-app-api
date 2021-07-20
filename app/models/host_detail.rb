class HostDetail < ApplicationRecord
  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
