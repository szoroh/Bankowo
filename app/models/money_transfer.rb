class MoneyTransfer < ApplicationRecord
  validates :iban, presence: true
  validates :amount, presence: true
  validates :currency, presence: true
end
