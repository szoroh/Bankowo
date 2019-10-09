class MoneyTransfersController < ApplicationController
  def new
    @money_transfer = MoneyTransfer.new
  end

  def create
    # TODO: SO with transaction
  end

  private

  def money_transfer_params
    params.require(:bank_account).permit(:iban, :amount, :currency)
  end
end
