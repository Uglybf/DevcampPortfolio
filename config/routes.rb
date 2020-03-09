Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # nicer than: get 'pages/contact'

  resources :blogs
  
  root to: 'pages#home'
end
