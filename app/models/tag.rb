class Tag < ApplicationRecord
  belongs_to :host_detail

  validates :tag, length: { maximum: 20 }
end
