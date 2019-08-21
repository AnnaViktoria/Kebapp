Rails.application.routes.draw do
  get "design", to: 'pages#design', as: :design
  root to: 'kebab_shops#landing'

    get "landing", to: 'kebab_shops#landing', as: :landing
    post "set-user-location", to: 'kebab_shops#set_user_location', as: :position
  resources :kebab_shops do
    resources :reviews, only: [:new, :create]
    resources :schedules, only: [:new, :create]
  end
end
