Rails.application.routes.draw do
  resources :books, only: [:index, :show] do
    resources :reviews, only: [:index, :create, :new]
  end
end
