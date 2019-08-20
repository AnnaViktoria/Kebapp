Rails.application.routes.draw do
  get "design", to: 'pages#design', as: :design
  root to: 'kebab_shops#landing'

    get "landing", to: 'kebab_shops#landing', as: :landing
  resources :kebab_shops do
    resources :reviews, only: [:new, :create]
    resources :schedules, only: [:new, :create]
  end
end
