Rails.application.routes.draw do
  #root "articles#index"
  devise_for :users, controllers: { sessions: 'users/sessions'}
  root to: "home#index"
  devise_for :views
end
