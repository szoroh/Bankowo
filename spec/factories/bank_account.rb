require 'faker'

FactoryBot.define do
  factory :bank_account do
    iban { Faker::Bank.iban }
    currency { Faker::Currency.name }
    balance { Faker::Commerce.price }
    user
  end
end
