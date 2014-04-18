HBManagementDevelopment::Application.routes.draw do

  resources :tareas

  resources :componentes

  resources :secciones

  resources :areas

  resources :proyectos

  get '/index.html' => 'home#index'

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end