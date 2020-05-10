Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :create, :show]
    resource :session, only: [:create, :destroy]

    resources :sections, only: [:index, :show]
    resources :books, only: [:index, :show]
    resources :parshios, only: [:index, :show]

    get '/:book_id/perakim', to: 'perakim#index', as: 'book_perakim'
    get '/:book_id/:perek_id', to: 'perakim#show', as: 'book_perek'
    get '/:book_id/:perek_id/pesukim', to: 'pesukim#index', as: 'book_perek_pesukim'
    get '/:book_id/:perek_id/:id', to: 'pesukim#show', as: 'book_perek_pasuk'
  end

  root to: 'static_pages#root'
end
