class HostDetail < ApplicationRecord
  has_many :tags, dependent: :destroy
  accepts_nested_attributes_for :tags, allow_destroy: true

  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
