require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  let(:bank_account) { create(:bank_account) }

  describe 'new bank account' do
    context 'with correct params' do
      it 'is valid' do
        expect(bank_account).to be_valid
      end
    end

    context 'with missing params' do
      it 'is invalid' do
        bank_account.iban = nil
        expect(bank_account).not_to be_valid
      end
    end
  end
end
