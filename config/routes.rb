Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :books, only: [:index, :show] do
    resources :reviews, only: [:index, :create, :new]
  end

  root to: "books#index"
end
