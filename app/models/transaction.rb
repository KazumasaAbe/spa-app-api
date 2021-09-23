class Transaction < ApplicationRecord
  belongs_to :local_currency
  belongs_to :sale
end
