Rails.application.routes.draw do
  get "design", to: 'pages#design', as: :design
  root to: 'kebab_shops#landing'

    get "landing", to: 'kebab_shops#landing', as: :landing
    get "loading", to: 'kebab_shops#loading', as: :loading
    get "featured", to: 'kebab_shops#featured', as: :featured
    post "set-user-location", to: 'kebab_shops#set_user_location', as: :position
    get "filter", to: "kebab_shops#filter", as: :filter
  resources :kebab_shops do
    resources :reviews, only: [:new, :create]
    resources :schedules, only: [:new, :create]
  end
end
