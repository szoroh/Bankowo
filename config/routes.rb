Rails.application.routes.draw do
  resources :bank_accounts, only: [:new, :create, :index, :show]
  devise_for :users,
    controllers: { registrations: 'registrations' }
end
