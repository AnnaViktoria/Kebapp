Rails.application.routes.draw do
  get "design", to: 'pages#design', as: :design
  root to: 'kebab_shops#index'

  resources :kebab_shops do
    resources :reviews, only: [:new, :create]
    resources :schedules, only: [:new, :create]
  end
end
