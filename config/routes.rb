Rails.application.routes.draw do
  resources :bank_accounts, only: [:new, :create, :index, :show]
  devise_for :users,
    controllers: { registrations: 'registrations' }
  resources :money_transfers, only: [:new, :create]
end
