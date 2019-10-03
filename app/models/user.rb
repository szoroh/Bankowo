class User < ApplicationRecord
  has_many :bank_accounts, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { in: 2..30 }
end
