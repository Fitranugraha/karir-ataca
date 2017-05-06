Rails.application.routes.draw do
  resources :trainings
  resources :formal_educations
  resources :bloods
  resources :sexes
  resources :married_statuses
  resources :job_experiences
  resources :achievements
  resources :scientific_works
  resources :organizations
  resources :travellings
  resources :family_relations
  resources :education_levels
  resources :families
  resources :language_levels
  resources :languages
  resources :profiles
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users

  resources :users



end
