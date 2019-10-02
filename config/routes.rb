Rails.application.routes.draw do
  resources :bank_accounts, only: [:new, :create]
  devise_for :users,
    controllers: { registrations: 'registrations' }
end
