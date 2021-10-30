class HostDetail < ApplicationRecord
  has_many :tags, dependent: :destroy
  accepts_nested_attributes_for :tags, allow_destroy: true

  validates :name, presence: true, length: { maximum: 30}
  validates :latitude, presence: true, length: { maximum: 11 }
  validates :longitude, presence: true, length: { maximum: 11 }
end
