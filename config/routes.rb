Rails.application.routes.draw do
  resources :competance_sgbd
  resources :competance_cms
  resources :competance_framework
  resources :competance_langage
  resources :competance_langue
  
  devise_for :users

  resources :mon_cv

  get 'profile/index', to: 'profile#index'

  resources :niveau

  resources :experience

  resources :competance

  resources :formation

  patch 'experience/{id}', to: 'experience#update', as: :experience_edited

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
