class BankAccountsController < ApplicationController
  def new
    @bank_account = BankAccount.new
  end

  def create
    @bank_account = current_user.bank_accounts.new(bank_account_params)

    if @bank_account.save
      flash[:success] = 'Account successfully created.'
      redirect_to(@bank_account)
    else
      flash[:error] = @bank_account.errors.full_messages.to_sentence
      render :new
    end
  end

  def index
    @bank_accounts = BankAccount.all
  end

  def show
    @bank_account = BankAccount.find(params[:id])
  end

  private

  def bank_account_params
    params.require(:bank_account).permit(:iban, :balance, :currency)
  end
end
