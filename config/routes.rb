Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  resources :books
  #root "articles#index"
  # devise_for :users, controllers: { sessions: 'users/sessions'}
  root to: "books#index"
end
