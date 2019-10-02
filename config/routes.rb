Rails.application.routes.draw do
  resources :bank_accounts, only: [:new, :create, :index]
  devise_for :users,
    controllers: { registrations: 'registrations' }
end
