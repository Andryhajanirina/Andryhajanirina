Rails.application.routes.draw do
  get 'level/index'
  get 'level/new'
  get 'level/edit'
  get 'level/update'
  resources :competance_sgbd
  resources :competance_cms
  resources :competance_framework
  resources :competance_langage
  resources :competance_langue
  
  devise_for :users

  resources :mon_cv

  get 'profile', to: 'profile#index'

  resources :niveau

  resources :experience

  resources :competance

  resources :formation

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
