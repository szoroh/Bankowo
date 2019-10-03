class BankAccount < ApplicationRecord
  belongs_to :user

  validates :iban, presence: true, length: { maximum: 34 }
  validates :currency, presence: true
end
