Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/angular', to: 'portfolios#angular'
  get 'portfolios/ruby_on_rails', to: 'portfolios#ruby_on_rails'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # nicer than: get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end