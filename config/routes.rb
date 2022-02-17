Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  #root "articles#index"
  # devise_for :users, controllers: { sessions: 'users/sessions'}
  root to: "users#index"
end
