Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :create, :show]
    resource :session, only: [:create, :destroy]

    resources :sections, only: [:index, :show]
    resources :books, only: [:index, :show]
  end
end
