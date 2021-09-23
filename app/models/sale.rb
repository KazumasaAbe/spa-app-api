class Sale < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :local_currencies, through: :transactions
  accepts_nested_attributes_for :transactions
end
