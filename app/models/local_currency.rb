class LocalCurrency < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :sales, through: :transactions
end
